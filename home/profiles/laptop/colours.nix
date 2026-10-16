{ inputs, ... }: {
  imports =  [
    ../../../users/colours.nix
  ];

  home-manager.users.colours = {
    home.stateVersion = "26.05";
      
    programs = {
      home-manager.enable =  true;
      texlive.enable = true;
      vesktop.enable = true;
    };

    imports = [
      inputs.catppuccin.homeModules.catppuccin
      ../../terminal/kitty.nix
      ../../terminal/shell/fish.nix
      ../../terminal/apps/starship.nix
      ../../terminal/apps/yazi.nix

      ../../hyprland
      ../../noctalia
    ];

    home.file."Pictures/Wallpaper" = {
      recursive = true;
      source = ../../wallpapers;
    };

    # Integrations
    catppuccin.enable = true;
    catppuccin.autoEnable = true;
  };
}
