{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    way-cooler
    firefox
    emacs
    gcc
    llvm
    pavucontrol
    mumble ];

  services.xserver.wacom.enable = true;

  boot.loader.grub.useOSProber = true;
}