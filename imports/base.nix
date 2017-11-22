{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git ];

  i18n = {
    consoleFont = "Lat2-Terminus16";
    consoleKeyMap = "dvorak";
    defaultLocale = "en_US.UTF-8";
  };

  security.sudo.enable = true;
  security.sudo.configFile = ''
    rovanion ALL=(ALL) ALL
  '';
}