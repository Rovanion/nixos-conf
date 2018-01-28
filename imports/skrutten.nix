{ config, pkgs, ... }:


{
  imports = [ ./desktop.nix ./development.nix ];

  time.timeZone = "Europe/Stockholm";

  networking.hostName = "skrutten";

  services.xserver.videoDrivers = [ "nvidia" ];
  services.xserver.deviceSection = ''
    Option "Coolbits" "4"
  '';
  services.xserver.exportConfiguration = true;
  nixpkgs.config.allowUnfree = true;
}
