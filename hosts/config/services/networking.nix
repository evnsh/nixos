{
  networking = {
    networkmanager = {
      enable = true;
      wifi = {
        backend = "iwd";
        settings.General.EnableNetworkConfiguration = true;
        powersave = true;
      };
    };

    firewall = {
      enable = true;
      allowedTCPPorts = [
        8081
        4321
      ];
      checkReversePath = "loose";
    };
  };
}
