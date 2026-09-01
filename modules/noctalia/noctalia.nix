{ self, inputs, ... }: {
  flake.nixosModules.noctalia = { pkgs, lib, ... }: {
    environment.systemPackages = [
      self.packages.${pkgs.stdenv.hostPlatform.system}.noctalia
    ];
  };

  perSystem = { pkgs, ... }: {
    packages.noctalia = inputs.wrapper-modules.wrappers.noctalia-shell.wrap {
      inherit pkgs;

      settings = { };
    };
  };
}
