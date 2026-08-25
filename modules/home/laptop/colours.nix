{
  flake.nixosModules.coloursLaptop = {
    imports = let 
      users = ../../../users; 
    in [
      users/colours
    ];

    home-manager.users.colours = {
      home.stateVersion = "26.05";
      
      programs.home-manager.enable =  true;

      imports = let
        features = self.homeManagerModules;
      in [
        features.fish-omp
        features.fish
      ];
    };
  };
}