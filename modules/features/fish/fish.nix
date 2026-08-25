{ self, inputs, ... }: {
  flake.homeManagerModules.fish = {
    programs.fish.enable = true;
  };

  flake.nixosModules.fish = { pkgs, ... }: {
    environment.systemPackages = [
      self.packages.${pkgs.stdenv.hostPlatform.system}.fish
    ];
  };

  perSystem = { pkgs, ... }: {
    packages.fish = inputs.wrapper-modules.wrappers.fish.wrap {
      inherit pkgs;
      runtimePkgs = [
        self.packages.${pkgs.stdenv.hostPlatform.system}.omp
      ];

      configFile.content = builtins.readFile ./setup.fish;
    };
  };
}