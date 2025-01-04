{pkgs, ...}: {
  imports = [
    ./hardware-configuration.nix
    ./power-management.nix
    ./asahi.nix

    ./programs/dconf.nix
    ./programs/gnupg.nix
    ./programs/thunar.nix
    ./services/blueman.nix
    ./services/dbus.nix
    ./services/gnome-keyring.nix
    ./services/greetd.nix
    ./services/gvfs.nix
    ./services/mariadb.nix
    ./services/pipewire.nix
    ./services/postgresql.nix
    ./virtualisation/containers.nix
    ./virtualisation/docker.nix
    ./virtualisation/podman.nix

    ../config/fonts
    ../config/window-managers/hyprland
  ];

  boot.kernelPackages = pkgs.linuxPackages_xanmod_latest;

  hardware = {
    graphics = {
      enable = true;
    };
  };

  services = {
    # btrfs.autoScrub.enable = true;

    # fwupd.enable = true;

    # hardware.bolt.enable = true;
  };

  # Tell DE about the notch
  boot.kernelParams = ["apple_dcp.show_notch=1"];
}
