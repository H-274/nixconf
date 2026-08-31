{ self, inputs, ... }: let 
  inherit (pkgs.stdenv.hostPlatform) system;
in {
  flake.nixosModules.fish = { pkgs, ... }: {
    environment.systemPackages = [
      self.packages.${system}.fish
    ];
  };

  perSystem = { pkgs, ... }: {
    packages.fish = inputs.wrapper-modules.wrappers.fish.wrap {
      inherit pkgs;
      runtimePkgs = [
        self.packages.${system}.omp
      ];

      configFile.content = builtins.readFile ./setup.fish;
    };
  };
}
