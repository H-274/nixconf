{ inputs, ... }: {
  imports =  [
    ../../../users/colours.nix
  ];

  home-manager.users.colours = {
    home.stateVersion = "26.05";
      
    programs.home-manager.enable =  true;

    imports = [
      inputs.catppuccin.homeModules.catppuccin
      ../../terminal/foot.nix
      ../../terminal/shell/omp.nix
      ../../terminal/shell/fish.nix

      ../../desktop/hyprland
    ];

    # Integrations
    catppuccin.enable = true;
    catppuccin.autoEnable = true;
    programs.oh-my-posh.enableFishIntegration = true;
  };
}
