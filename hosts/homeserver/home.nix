{ config, pkgs, ... }:

{
  imports = [
    ../../modules/cli.nix
    ../../modules/devtools.nix
  ];
  # Home Manager needs a bit of information about you and the paths it should
  # manage.
  home.username = "rdrachmanto";
  home.homeDirectory = "/home/rdrachmanto";

  home.stateVersion = "24.11"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your
  # environment.
  home.packages = [
  ];

  home.file = {
  };

  home.sessionVariables = {
    # EDITOR = "emacs";
  };
}
