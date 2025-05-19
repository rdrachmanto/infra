{ pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    git
    wget
    curl
    lshw
    tmux
    nmap
    home-manager
    stow
    neovim
    unzip
  ];
}

