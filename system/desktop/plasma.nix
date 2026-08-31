{
  services.desktopManager.plasma6.enable = true;

  # X11 window system
  services.xserver.enable = true;
  services.xserver.xkb = {
    layout = "ca";
    variant = "";
  };
}
