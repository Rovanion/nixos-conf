{ config, pkgs, ... }:

{
  imports = [ 
    ./base.nix
    ./development.nix ];

  environment.systemPackages = with pkgs; [
    awesome
    sway
    way-cooler
    firefox
    emacs
    pavucontrol
    mumble ];

  services.xserver.wacom.enable = true;

  boot.loader.grub.useOSProber = true;
}
