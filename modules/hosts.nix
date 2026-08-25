{ inputs, ... }: let 
  hosts = ../../hosts;
in {
  flake.nixosConfigurations.laptop = inputs.nixpkgs.lib.nixosSystem {
    modules = [ hosts/laptop ];
  };

  flake.nixosConfigurations.main = inputs.nixpkgs.lib.nixosSystem {
    modules = [ hosts/main ];
  };
}