{ pkgs, lib, ... }:
{
  environment.etc."rancher/k3s/registries.yaml".text = ''
    mirrors:
      "localhost":
        endpoint:
          - "http://localhost:5000"
  '';

  virtualisation = {
    containers.enable = true;
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };

  virtualisation.oci-containers.backend = "podman";
  virtualisation.oci-containers.containers.registry = {
    image = "docker.io/library/registry:2";
    ports = [ "5000:5000" ];
    volumes = [
      "/var/lib/registry:/var/lib/registry"
    ];
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
