{ pkgs, ... }: {
  home.packages = with pkgs; [
    nerd-fonts.atkynson-mono
  ];

  programs.foot = {
    enable = true;
    settings = {
      main = {
        font = "Atkynson Mono";
        dpi-aware = "yes";
      };
    };
  };
}
