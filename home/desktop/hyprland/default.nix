{ lib, ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    # set the Hyprland and XDPH packages to null to use the ones from the NixOS module
    package = null;
    portalPackage = null;

    # Additional config directly in Lua instead of using Nix
    extraLuaFiles = let 
      files = [
        ./animations.lua
        ./binds.lua
        ./rules.lua
        ./settings.lua
        ./smartgaps.lua
      ];
    in builtins.listToAttrs (
      map (e: {
        name = lib.baseNameOf e;
        value = { 
          autoLoad = true;
          source = builtins.readFile e; 
        };
      }) files
    );
  };

  home.sessionVariables.NIXOS_OZONE_WL = "1";
}
