{ pkgs, ... }: {
  programs.kitty = {
    enable = true;
    autoThemeFiles.noPreference = "Catppuccin-Mocha";
    autoThemeFiles.light = "Catppuccin-Latte";
    autoThemeFiles.dark = "Catppuccin-Mocha";
    font = {
      name = "AtkynsonMono Nerd Font";
      package = pkgs.nerd-fonts.atkynson-mono;
    };
  };
}
