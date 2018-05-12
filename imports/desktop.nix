{ config, pkgs, ... }:

{
  imports = [ ./base.nix ];

  environment.systemPackages = with pkgs;
  [ firefox
    emacs
    rxvt_unicode-with-plugins
    urxvt_perls
    xfontsel
    pavucontrol
    mumble
    steam
    bc
    imagemagick
    xfce.thunar
    xfce.thunar_volman
    gpicview
    evince
    spotify
    xorg.xkbcomp
    openssl
    xarchiver
    gzip
    gnome3.defaultIconTheme
    volumeicon
    dropbox-cli
    baobab
    gparted
    scrot
    stress
    geekbench
    gimp
    # teamviewer
    chromium
    libreoffice
    redshift
    poppler_utils
    gnome3.file-roller
    keepassx-community ];

  # services.teamviewer.enable = true;

  fonts.fonts = with pkgs; [ terminus_font ];

  networking.networkmanager.enable = true;
  users.users.rovanion.extraGroups = [ "networkmanager" ];

  services.xserver.enable = true;
  services.xserver.windowManager.awesome.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.wacom.enable = true;
  services.xserver.layout = "se";
  services.xserver.xkbVariant = "dvorak";

  hardware.opengl.driSupport32Bit = true;
  hardware.pulseaudio.enable = true;
  hardware.pulseaudio.support32Bit = true;

  boot.loader.grub.useOSProber = true;
}
