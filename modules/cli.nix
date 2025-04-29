{ pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    fzf
    ripgrep
    yazi
    ueberzugpp
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
    nmap
    fastfetch
  ];
}

