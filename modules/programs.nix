{ pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    alacritty
    emacs-pgtk
    spotify    
    arduino-ide
    discord
    thunderbird
    libtiff
  ];
}

