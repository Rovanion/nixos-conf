{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gcc
    gdb
    llvm
    global
    android-studio
    androidsdk
    zulu8 ];

    users.extraUsers.alice.extraGroups = ["adbusers"];
}


