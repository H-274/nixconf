{ self, ... }: {
  programs.oh-my-posh.enable = true;
  programs.oh-my-posh.configFile = "${self}/modules/features/oh-my-posh/zen.toml";
}