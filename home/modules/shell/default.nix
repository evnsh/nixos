{
  imports = [
    ./programs/starship.nix

    ./scripts/preview.nix
    ./scripts/run-as-service.nix

    ./services/gpg.nix
    ./services/ssh.nix

    ./utils.nix
    ./zsh.nix
  ];
}