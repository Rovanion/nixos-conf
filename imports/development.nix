{ config, pkgs, ... }:

{
  imports = [ ./base.nix ];

  environment.systemPackages = with pkgs; [
    gcc
    gdb
    llvm
    gnumake
    global
    android-studio
    #androidsdk
    zulu8               # Alternative JVM.
    dfu-programmer      ###
    avrgcc              # For the AVR development, the
    avrbinutils         # Ergodox EZ specifically.
    avrlibc             ###
    dos2unix
    nodejs-8_x
    ];

    virtualisation.docker.enable = true;

    programs.adb.enable = true;

    users.users.rovanion.extraGroups = ["adbusers" "docker"];
}
