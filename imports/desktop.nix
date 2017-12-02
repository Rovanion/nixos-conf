{ config, pkgs, ... }:

{
  imports = [ 
    ./base.nix
    ./development.nix ];

  environment.systemPackages = with pkgs;
  [ sway
    way-cooler
    firefox
    emacs
    rxvt_unicode
    xfontsel
    pavucontrol
    mumble
    steam
    bc
    imagemagick
    xfce.thunar
    xfce.thunar_volman
    gpicview
    evince ];

  fonts.fonts = with pkgs;
  [ terminus_font ];

  services.xserver.enable = true;
  services.xserver.windowManager.awesome.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.wacom.enable = true;
  services.xserver.layout = "se";
  services.xserver.xkbVariant = "dvorak";

  hardware.opengl.driSupport32Bit = true;

  boot.loader.grub.useOSProber = true;
}
