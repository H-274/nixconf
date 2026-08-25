{ self, inputs, pkgs, ... }: let
  home = ../../home/laptop;
in {
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "26.05";

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Importing configs
  imports = [  
    home
  ];

  # System packages
  environment.systemPackages = with pkgs; [
    git
    github-cli
    firefox
    kitty
  ];

  # Networking
  networking.hostName = "laptop";
  networking.networkmanager.enable = true;
  networking.wireless.enable = true;

  boot.loader.systemd-boot.enable = true;
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;

  # X11 window system
  services.xserver.enable = true;
  services.xserver.xkb = {
    layout = "ca";
    variant = "";
  };

  # Time zone
  time.timeZone = "America/Toronto";

  # I18N
  i18n.defaultLocale = "en_CA.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_CA.UTF-8";
    LC_IDENTIFICATION = "en_CA.UTF-8";
    LC_MEASUREMENT = "en_CA.UTF-8";
    LC_MONETARY = "en_CA.UTF-8";
    LC_NAME = "en_CA.UTF-8";
    LC_NUMERIC = "en_CA.UTF-8";
    LC_PAPER = "en_CA.UTF-8";
    LC_TELEPHONE = "en_CA.UTF-8";
    LC_TIME = "en_CA.UTF-8";
  };
}