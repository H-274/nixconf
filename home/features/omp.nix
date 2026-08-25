{ self, ... }: {
  programs.oh-my-posh.enable = true;
  programs.oh-my-posh.configFile = "${self}/modules/oh-my-posh/zen.toml";
}