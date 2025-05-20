{ config, pkgs, lib, ... }:
{
  # Enable OpenSSH
  services.openssh.enable = true;

  # Enable Samba
  services.samba = {
    enable = true;
    openFirewall = true;
    settings = {
      global = {
        "security" = "user";
        "workgroup" = "WORKGROUP";
        "server string" = "smbnix";
        "netbios name" = "smbnix";
        "guest account" = "nobody";
        "map to guest" = "bad user";
        "hosts allow" = "192.168.1. 127.0.0.1 localhost";
        "hosts deny" = "0.0.0.0/0";
      };
      "Public" = {
        "path" = "/srv/Public";
        "browseable" = "yes";
        "read only" = "no";
        "write list" = ["srv"];
        "valid users" = ["srv"];
        "guest ok" = "yes";
        "create mask" = "0664";
        "directory mask" = "0755";
      };
    };
  };
}
