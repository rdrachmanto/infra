{ pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    fzf
    ripgrep
    yazi
    fd
    eza
    stow
    bat
    starship
    glances
  ];
}

