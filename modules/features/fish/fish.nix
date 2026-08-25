{ self, inputs, ... }: {
  flake.homeManagerModules.fish = {
    programs.fish.enable = true;
    programs.fish.shellInit = builtins.readfile ./setup.fish;
  };

  flake.nixosModules.fish = { pkgs, ... }: {
    environment.systemPackages = [
      self.packages.${pkgs.stdenv.hostPlatform.system}.fish
      self.packages.${pkgs.stdenv.hostPlatform.system}.oh-my-posh
    ];
  };

  perSystem = { pkgs, ... }: {
    packages.fish = inputs.wrapper-modules.wrappers.fish.wrap {
      inherit pkgs;

      import self.nixosModules.omp;
      configFile.content = builtins.readFile ./setup.fish;
    };
  };
}