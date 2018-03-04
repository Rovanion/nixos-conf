{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs;
    [ git
      htop
      screen
      mosh
      lm_sensors
      ncdu
      bind
      file
      mtr ];

  i18n =
    { consoleFont   = "Lat2-Terminus16";
      consoleKeyMap = "dvorak";
      defaultLocale = "en_US.UTF-8"; };

  users.users.rovanion =
    { isNormalUser = true;
      extraGroups  = ["wheel"]; };

  security.sudo.enable = true;
  security.sudo.configFile = ''
    %wheel ALL=(ALL) ALL
    '';
}
