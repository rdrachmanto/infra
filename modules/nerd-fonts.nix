{ pkgs, lib, ... }:
{
  fonts.packages = with pkgs; [
    nerd-fonts.iosevka
    nerd-fonts.iosevka-term
    font-awesome
    udev-gothic-nf
  ];
}

