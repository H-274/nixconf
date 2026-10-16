{ config, ... }:{
  programs.starship = {
    enable = true;
    enableFishIntegration = config.programs.fish.enable;
  };
}