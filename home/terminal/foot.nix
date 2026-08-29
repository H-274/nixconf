{ pkgs, ... }: {
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    nerd-fonts.atkynson-mono
  ];

  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "AtkynsonMono Nerd Font";
        dpi-aware = "yes";
      };
    };
  };
}
