{ inputs, ... }: {
  imports = [ inputs.areofyl-fetch.homeManagerModules.default ];

  programs.fetch = {
    enable = true;
    light = "top-right";
  };
}
