{ config, lib, pkgs, ...}:
{
  services.xserver.enable = true;
  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  environment.systemPackages = [ 
    pkgs.adwaita-icon-theme 
    pkgs.gnome-themes-extra
  ];
}
