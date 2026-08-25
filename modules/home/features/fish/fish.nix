{
  flake.homeManagerModules.fish = {
    programs.fish.enable = true;
    programs.fish.shellInit = builtins.readfile ./setup.fish;
  };
}