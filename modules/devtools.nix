{ pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    neovim
    git
    micromamba
    clang-tools
    cmake
    gnumake
    gcc
    jdk17
    jdt-language-server
  ];
}

