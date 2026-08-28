{ inputs, ... }: {
  imports =  [
    ../../users/colours.nix
  ];

  home-manager.users.colours = {
    home.stateVersion = "26.05";
      
    programs.home-manager.enable =  true;

    imports = [
      inputs.catppuccin.homeModules.catppuccin
      ../features/omp.nix
      ../features/fish.nix
      ../features/kitty.nix
      ../features/foot.nix
      ../features/fetch.nix
    ];

    # Integrations
    catppuccin.enable = true;
    catppuccin.autoEnable = true;
    programs.oh-my-posh.enableFishIntegration = true;
    programs.kitty.shellIntegration.enableFishIntegration = true;
  };
}
