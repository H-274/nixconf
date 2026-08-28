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
      ../features/kitty.nix
      ../features/foot.nix
    ];

    # Integrations
    programs.oh-my-posh.enableFishIntegration = true;
    programs.kitty.shellIntegration.enableFishIntegration = true;
  };
}
