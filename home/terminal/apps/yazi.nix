{ config, ... }:{
  programs.yazi = {
    enable = true;
    enableFishIntegration = config.programs.fish.enable;
  };
}