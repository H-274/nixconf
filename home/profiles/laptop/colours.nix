{ inputs, ... }: {
  imports =  [
    ../../../users/colours.nix
  ];

  home-manager.users.colours = {
    home.stateVersion = "26.05";
      
    programs = {
      home-manager.enable =  true;
      starship.enable = true;
      texlive.enable = true;
      vesktop.enable = true;
      yazi = {
        enable = true;
        theme = { flavor = { use = "noctalia"; }; };
      };
    };

    imports = [
      inputs.catppuccin.homeModules.catppuccin
      ../../terminal/kitty.nix
      ../../terminal/shell/fish.nix

      ../../hyprland
      ../../noctalia
    ];

    home.file."Pictures/Wallpaper" = {
      recursive = true;
      source = ../../wallpapers;
    };
    wayland.windowManager.hyprland.extraConfig = ''require("noctalia")'';

    # Integrations
    programs.starship.enableFishIntegration = true;
    programs.kitty = {
      extraConfig = "include themes/noctalia.conf";
      shellIntegration.enableFishIntegration = true;
    };
    programs.yazi.enableFishIntegration = true;
  };
}
