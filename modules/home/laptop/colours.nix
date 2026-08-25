{
  flake.nixosModules.coloursLaptop = {
    imports = let 
      users = ../../../users; 
    in [
      users/colours
    ];

    home-manager.users.colours = {
      imports = let
        features = self.homeManagerModules;
      in [
        features.fish-omp
        features.fish
      ];

      home.stateVersion = "26.05";
      
      programs.home-manager.enable =  true;
    };
  };
}