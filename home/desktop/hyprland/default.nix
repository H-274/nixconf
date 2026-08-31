let 
  dotPath = ".config/hyprland";
in {
  wayland.windowManager.hyprland = {
    enable = true;
    # set the Hyprland and XDPH packages to null to use the ones from the NixOS module
    package = null;
    portalPackage = null;
  };

  home.sessionVariables.NIXOS_OZONE_WL = "1";

  home.file = let 
    configFiles = [
    ./animations
    ./binds
    ./hyprland.lua;
    ./rules.lua
    ./settings.lua
    ./smartgams.lua
  ];
  in builtins.listToAttrs (
    map (e: {
      name = "${dotPath}/${lib.baseNameOf e}}";
      value = { source = e; };
    }) lua
  );
}
