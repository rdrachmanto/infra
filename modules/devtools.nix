{ pkgs, lib, ... }:
{
  home.packages = with pkgs; [
    neovim
    git
    micromamba
  ];
}

