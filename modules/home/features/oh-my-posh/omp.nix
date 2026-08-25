{
  flake.homeManagerModules.omp = {
    programs.oh-my-posh.enable = true;
    programs.oh-my-posh.enableFishIntegration = true;
    programs.oh-my-posh.configFile = ./zen.toml;
  };
}