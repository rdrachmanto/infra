{ pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    fzf
    ripgrep
    yazi
    fd
    eza
    stow
    bat
    starship
    glances
    wget
    curl
    lshw
    tmux
  ];
}

