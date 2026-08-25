{ self, ... }: let 
  users = ../../users; 
  features = self.homeManagerModules;
in {
  imports =  [
    users/colours
  ];

  home-manager.users.colours = {
    home.stateVersion = "26.05";
      
    programs.home-manager.enable =  true;

    imports = [
      features.omp
      features.fish
    ];

    # Fish configuration with OMP
    programs.oh-my-posh.enableFishIntegration = true;
  };
}