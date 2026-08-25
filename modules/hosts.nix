{ self, inputs, ... }: {
  flake.nixosConfigurations.laptop = inputs.nixpkgs.lib.nixosSystem {
    modules = [ "${self}/hosts/laptop" ];
  };

  flake.nixosConfigurations.main = inputs.nixpkgs.lib.nixosSystem {
    modules = [ "${self}/hosts/main" ];
  };
}