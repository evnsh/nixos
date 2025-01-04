{
  boot = {
    consoleLogLevel = 3;

    initrd = {
      verbose = false;
      systemd.enable = true;
    };

    kernelParams = [
      "apple_dcp.show_notch=1"
    ];

    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };

      systemd-boot = {
        enable = true;
        editor = false;
        configurationLimit = 5;
      };

      timeout = 0; # Spam space to enter the boot menu
    };

    plymouth = {
      enable = true;
      theme = "bgrt";
    };

    tmp.cleanOnBoot = true;
  };
}
