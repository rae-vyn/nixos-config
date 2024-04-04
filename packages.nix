{ pkgs, ...}:
{
    environment.systemPackages = with pkgs; [
        # Daily Drivers
        # Packages I use every day, or something like it.
        # --------------------------------------------------------------
        obsidian
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
        freetube
        reaper
        vital
        easyeffects
        rpcs3

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

        # Misc
        # Packages that are here just to do... stuff
        # ---------------------------------------------------------------
        steam-run # Run programs like Steam does
        fuse3 # Make filesystems in userspace
        starship # Rust Shell
        r2modman # Modding for steam games

    
    ]; 
}