{ self, inputs, ... }: let 
  inherit (pkgs.stdenv.hostPlatform) system;
in {
  flake.nixosModules.omp = { pkgs, lib, ... }: {
    environment.systemPackages = [
      self.packages.${system}.omp
    ];
  };

  perSystem = { pkgs, ... }: {
    packages.omp = inputs.wrapper-modules.wrappers.oh-my-posh.wrap {
      inherit pkgs;

      configFile = ./zen.toml;
    };
  };
}
