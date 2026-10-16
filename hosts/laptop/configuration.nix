{ inputs, pkgs, ... }: let
  home = ../../home/profiles/laptop;
  hyprland = ../../system/desktop/hyprland.nix;
in {
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  system.stateVersion = "26.05";

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # Importing configs
  imports = [
    inputs.noctalia-greeter.nixosModules.default

    home
    hyprland
  ];

  # todo check why needed when enabled with home-manager
  programs.fish.enable = true;

  # System packages
  environment.systemPackages = with pkgs; [
    nitch
    git
    github-cli
    firefox
    spotify
  ];

  # Battery
  services.upower.enable = true;
  services.power-profiles-daemon.enable = true;

  services.displayManager.noctalia-greeter.enable = true;

  # Networking
  networking.hostName = "laptop";
  networking.networkmanager.enable = true;
  networking.wireless.enable = true;

  boot.loader.systemd-boot.enable = true;

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
