{pkgs, ...}: {
  programs.vscode = {
    mutableExtensionsDir = true;
    extensions = with pkgs.vscode-marketplace; [
      bradlc.vscode-tailwindcss
      eamodio.gitlens
      golang.go
      jnoortheen.nix-ide
      mikestead.dotenv
      ms-azuretools.vscode-docker
      redhat.vscode-yaml
      renesaarsoo.sql-formatter-vsc
      rust-lang.rust-analyzer
      svelte.svelte-vscode
    ];
  };
}
