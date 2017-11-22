{ config, pkgs, ... }:


{
  imports = [
    ./base.nix
    ./desktop.nix ];

  time.timeZone = "Europe/Stockholm";

  networking.hostName = "skrutten";
}