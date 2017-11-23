{ config, pkgs, ... }:

{
  imports = [ 
    ./base.nix
    ./development.nix ];

  environment.systemPackages = with pkgs; [
    sway
    way-cooler
    firefox
    emacs
    pavucontrol
    mumble ];

  services.xserver.enable = true;
  services.xserver.windowManager.awesome.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.wacom.enable = true;
  services.xserver.layout = "se";
  services.xserver.xkbVariant = "dvorak";

  boot.loader.grub.useOSProber = true;
}
