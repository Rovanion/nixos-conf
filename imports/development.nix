{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gcc
    gdb
    llvm
    gnumake
    global
    # android-studio
    # androidsdk
    zulu8 ];

    virtualisation.docker.enable = true;

    programs.adb.enable = true;

    users.users.rovanion.extraGroups = ["adbusers" "docker"];
}
