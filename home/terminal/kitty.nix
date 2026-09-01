{ pkgs, ... }: {
  programs.kitty = {
    enable = true;
    font = {
      name = "AtkynsonMono Nerd Font";
      package = pkgs.nerd-fonts.atkynson-mono;
    };
  };
}
