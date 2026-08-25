{ self, inputs, ... }: {
  flake.homeManagerModules.fish-omp = {
    programs.oh-my-posh.enable = true;
    programs.oh-my-posh.enableFishIntegration = true;
    programs.oh-my-posh.configFile = ./zen.toml;
  };

  flake.nixosModules.omp = { pkgs, lib, ... }: {
    environment.systemPackages = [
      self.packages.${pkgs.stdenv.hostPlatform.system}.oh-my-posh
    ];
  };

  perSystem = { pkgs, ... }: {
    packages.omp = inputs.wrapper-modules.wrappers.oh-my-posh.wrap {
      inherit pkgs;

      configFile = ./zen.toml;
    };
  };
}