{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    way-cooler
    firefox
    emacs
    gcc
    llvm
    pavucontrol ];

  services.xserver.wacom.enable = true;
}