{ pkgs, ...}:
{
    environment.systemPackages = with pkgs; [
        # Daily Drivers
        # Packages I use every day, or something like it.
        # --------------------------------------------------------------
        obsidian
        logseq
        steam
        (
            discord.override {
                withVencord = true;
            }
        )
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

        # Programming & Development
        # Packages vital to my programming and game dev work.
        # ---------------------------------------------------------------
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
        wezterm
        morgen
        rogue
        gleam
        go
        erlang 
        
        # Hacking & Pentesting
        # Packages vital to my *other* programming
        # ---------------------------------------------------------------
        nmap
        whois
        wireshark-qt
        
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
        traceroute
        
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

        # Misc
        # Packages that are here just to do... stuff
        # ---------------------------------------------------------------
        steam-run # Run programs like Steam does
        fuse3 # Make filesystems in userspace
        starship # Rust Shell
        r2modman # Modding for steam games

    
    ]; 
}