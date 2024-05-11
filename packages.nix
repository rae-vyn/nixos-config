{pkgs, ...}: let
  unstable = import <nixos-unstable> {config = {allowUnfree = true;};};
in {
  environment.systemPackages = with pkgs; [
    # Daily Drivers
    # Packages I use every day, or something like it.
    # --------------------------------------------------------------
    obsidian
    logseq
    steam
    discord
    mpv
    dolphin # File Manager
    libreoffice
    zsh
    spotify
    musikcube
    termusic
    strawberry
    freetube
    reaper
    vital
    easyeffects
    rpcs3
    thunderbird
    nushell
    bitwig-studio
    audacious
    cemu
    lmms
    inkscape
    refind
    efibootmgr
    gparted
    openttd
    nh
    pass
    gnupg
    pinentry
    obs-studio
    porsmo
    freeglut
    libGL
    gimp
    rmlint

    # Programming & Development
    # Packages vital to my programming and game dev work.
    # ---------------------------------------------------------------
    neovide
    git
    gitFull
    github-desktop
    python3
    godot_4
    yt-dlp
    vscode
    rustup
    gcc
    zig
    neofetch
    authenticator
    gdtoolkit
    kitty
    alacritty
    wezterm
    morgen
    rogue
    gleam
    go
    erlang
    python3
    python311Packages.pip
    zoxide
    languagetool
    nodejs_21
    unzip
    pypy3
    carapace
    libsForQt5.kclock
    libsForQt5.kate
    alejandra
    exercism
    nodePackages.vercel
    hunspell
    sccache
    direnv
    helix
    arduino
    pika-backup

    # Hacking & Pentesting
    # Packages vital to my *other* programming
    # ---------------------------------------------------------------
    nmap
    whois
    wireshark-qt
    wireguard-tools

    # Computer Stuff
    # Drivers, interfaces, and the like
    # ---------------------------------------------------------------
    fwupd # Drivers
    asusctl
    openrgb
    fanctl
    pulseaudio
    libpulseaudio
    xdg-desktop-portal-gtk
    libsForQt5.qtstyleplugin-kvantum
    libsForQt5.applet-window-buttons
    glava
    powertop
    traceroute
    power-profiles-daemon

    # Command Line Utilities
    # Packages that enhance my command line experience
    # ---------------------------------------------------------------
    spicetify-cli
    tidal-dl
    bluez
    bluez-tools
    appimage-run
    wine
    winetricks
    bottles
    speedtest-rs
    lutris
    lsd
    fzf
    sane-backends
    sane-frontends
    xsane
    swingsane
    libsForQt5.skanlite
    libsForQt5.kalgebra
    libsForQt5.qt5ct
    gradience
    gnome.adwaita-icon-theme
    toybox
    yabridge
    yabridgectl
    brightnessctl
    gnumake
    cmake
    protonvpn-gui
    nix-prefetch-git
    nix-prefetch-github
    latte-dock
    tlp
    rpi-imager
    lmms
    vlc

    # Misc
    # Packages that are here just to do... stuff
    # ---------------------------------------------------------------
    steam-run # Run programs like Steam does
    fuse3 # Make filesystems in userspace
    starship # Rust Shell
    r2modman # Modding for steam games
    libsForQt5.plasma-integration # Plasma browser integration
    ahoviewer
    imgbrd-grabber
  ];
}
