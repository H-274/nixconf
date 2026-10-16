{ pkgs, config, ... }: {
  programs.kitty = {
    enable = true;
    font = {
      name = "AtkynsonMono Nerd Font";
      package = pkgs.nerd-fonts.atkynson-mono;
    };
    shellIntegration.enableFishIntegration = config.programs.fish.enable;
    extraConfig = builtins.readFile ./config.ini;
  };
}
