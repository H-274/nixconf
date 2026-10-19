{
  programs.noctalia = {
    enable = true;
    systemd.enable = true;
    settings = ./noctalia-config.toml;
  };
}
