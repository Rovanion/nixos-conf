{ config, pkgs, ... }:


{
  imports = [ ./desktop.nix ];

  time.timeZone = "Europe/Stockholm";

  networking.hostName = "skrutten";
}
