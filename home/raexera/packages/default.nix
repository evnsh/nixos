{
  pkgs,
  self,
  ...
}: {
  imports = [
    ./dev
  ];

  home.packages = with pkgs; [
    self.packages.${pkgs.system}.lightctl
    self.packages.${pkgs.system}.networkctl
    self.packages.${pkgs.system}.volumectl

    act
    amberol
    bc
    beekeeper-studio
    brave
    celluloid
    cloudflared
    dbmate
    discord
    du-dust
    duf
    fd
    ffmpeg-full
    ffmpegthumbnailer
    file
    foliate
    gcc
    genact
    ghostscript
    gnumake
    gobang
    grim
    grimblast
    grex
    hoppscotch
    imagemagick
    imv
    jaq
    jq
    just
    killall
    lazydocker
    lefthook
    libnotify
    lldb
    loupe
    nodejs
    obsidian
    openssl
    ouch
    p7zip
    pm2
    pnpm
    pocketbase
    podman-compose
    postman
    pre-commit
    prettierd
    procs
    psmisc
    psutils
    pwvucontrol
    redis
    ripgrep
    rsync
    scc
    sd
    slack
    slurp
    speedtest-cli
    swappy
    syncthing
    tdesktop
    trash-cli
    tree
    typst
    unrar
    unzip
    upscayl
    watchexec
    wget
    wf-recorder
    wl-clipboard
    wrk
    xh
    youtube-music
    yq
    yt-dlp
    zip
  ];
}
