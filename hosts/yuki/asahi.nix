{
  hardware.asahi = {
    peripheralFirmwareDirectory = ./firmware;
    withRust = true;
    setupAsahiSound = true;
    useExperimentalGPUDriver = true;
    experimentalGPUInstallMode = "replace";
  };
}