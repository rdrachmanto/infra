{ config, lib, pkgs, ...}:
{
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;

  programs.hyprland = {
    enable = true;
    xwayland.enable = true;
  };
  environment.systemPackages = [
    pkgs.hyprpaper
    pkgs.fuzzel
    pkgs.waybar
    pkgs.libnotify
    pkgs.mako
    pkgs.hyprshot
    pkgs.kdePackages.dolphin
    pkgs.bluetui
    pkgs.sioyek
    pkgs.zathura
    pkgs.swayimg
  ];

  environment.sessionVariables.NIXOS_OZONE_WL = "1";

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [ pkgs.kdePackages.xdg-desktop-portal-kde ];
}
