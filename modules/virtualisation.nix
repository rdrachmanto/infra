{ pkgs, lib, ... }:
{
  virtualisation = {
    containers.enable = true;
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };

  services.k3s = {
    enable = true;
    role = "server";
  };
  
  environment.systemPackages = with pkgs; [
    docker-compose
    podman-tui
  ];
}
