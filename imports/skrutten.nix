{ config, pkgs, ... }:


{
  imports = [ ./desktop.nix ];

  time.timeZone = "Europe/Stockholm";

  networking.hostName = "skrutten";

  services.xserver.videoDrivers = [ "nvidia" ];

  nixpkgs.config.allowUnfree = true;
}
