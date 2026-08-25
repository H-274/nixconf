{ pkgs, ... }: {
  users.users.colours = {
    isNormalUser = true;
    description = "colours";
    initialPassword = "12345";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.fish;
  };
}