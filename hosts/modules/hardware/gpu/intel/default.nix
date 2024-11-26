{pkgs, ...}: {
  boot = {
    initrd.kernelModules = ["i915"];
    kernelParams = ["i915.enable_guc=3"];
  };

  hardware.graphics = {
    extraPackages = with pkgs; [
      intel-media-driver
      intel-compute-runtime
      vpl-gpu-rt
    ];
    extraPackages32 = with pkgs.driversi686Linux; [
      intel-media-driver
    ];
  };
}