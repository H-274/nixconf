{ inputs, ... }: {
  imports = [ inputs.areofyl-fetch.homeManagerModules.default ];

  programs.fetch = {
    enable = true;
    separator = " ";
    light = "top-right";
    speed = 0.5;
    box = 1;
  };
}
