{ self, ... }: {
  flake.nixosConfigurations.laptop = inputs.nixpkgs.lib.nixosSystem {
    modules = let
      hosts = ../../hosts;
    in [
      hosts/laptop
    ];
  };
}