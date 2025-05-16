{ pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    unzip
    neovim
    git
    micromamba
    clang-tools
    cmake
    gnumake
    gcc
    jdk17
    jdt-language-server
    pkgs.python312Full
    python312Packages.pip
    basedpyright
    lua
    luajit
    lua-language-server
    nodejs_23
    emmet-language-server
  ];
}

