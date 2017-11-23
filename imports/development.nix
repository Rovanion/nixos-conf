{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    gcc
    gdb
    llvm
    global ];
}
