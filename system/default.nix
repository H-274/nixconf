{
  imports = [
    ./substituters.nix
    ./home-manager.nix
    ./audio.nix
  ];

  # X11 window system
  services.xserver.enable = true;
  services.xserver.xkb = {
    layout = "ca";
    variant = "";
  };
}
