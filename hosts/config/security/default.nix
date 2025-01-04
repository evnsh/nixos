{
  security = {
    # Allow hyprlock to unlock the screen
    pam.services.hyprlock = {};

    # Enable polkit
    polkit.enable = true;

    # Enable the RealtimeKit system service
    rtkit.enable = true;

    # Don't ask for password for wheel group
    sudo.wheelNeedsPassword = false;
  };
}
