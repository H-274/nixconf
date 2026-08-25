{
  flake.nixosModules.coloursLaptop = {
    imports = let 
      root = ../../../; 
    in [
      root/users/colours
    ];

    home-manager.users.colours = {
      imports = let
        features = self.homeManagerModules;
      in [
        features.fish
        features.omp
      ];

      home.stateVersion = "26.05";
      
      programs.home-manager.enable =  true;
    };
  };
}