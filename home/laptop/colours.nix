{
  imports =  [
    ../../users/colours.nix
  ];

  home-manager.users.colours = {
    home.stateVersion = "26.05";
      
    programs.home-manager.enable =  true;

    imports = [
      ../features/omp.nix
      ../features/fish.nix
    ];

    # Fish configuration with OMP
    programs.oh-my-posh.enableFishIntegration = true;
  };
}