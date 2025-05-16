{ config, pkgs, lib, ... }:
{
  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  # Enable flatpak
  services.flatpak.enable = true;

  # Avahi
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };

  # Postgres  -- Probably we can move this somewhere
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_15;
    settings = {
      listen_addresses = lib.mkForce "*";
    };
    authentication = ''
      local all postgres                peer
      local all all                     md5
      host  all all      127.0.0.1/32   md5
      host  all all      ::1/128        md5
      host  all all      169.254.1.0/24 md5
      host  all all      192.168.1.0/24 md5
    '';
  };
}
