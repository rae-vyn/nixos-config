{ pkgs, lib, spicetify-nix, ... }:
let
  spicePkgs = spicetify-nix.packages.${pkgs.system}.default;
in
{
  # allow spotify to be installed if you don't have unfree enabled already
  nixpkgs.config.allowUnfreePredicate = pkg: builtins.elem (lib.getName pkg) [
    "spotify"
  ];

  # import the flake's module for your system
  imports = [ spicetify-nix.nixosModule ];

  # configure spicetify :)
  programs.spicetify =
    let
      defaultDynamic = pkgs.fetchgit {
        url = "https://github.com/JulienMaille/spicetify-dynamic-theme";
        rev = "7b884c9ed0e1828610ac429dd01de23b59590513";
        sha256 = "sha256-NHkvSmNv1go60JQ4i1noVM/GBQVTTsZ2SMBtCYZNztk=";
      };
    in
    {
      enable = true;
      theme = {
        name = "DefaultDynamic";
        src = "./defaultDynamicSrc.json";
        injectCss = true;
        replaceColors = true;
        overwriteAssets = true;
        sidebarConfig = true;
      };

      enabledExtensions = with spicePkgs.extensions; [
        shuffle # shuffle+ (special characters are sanitized out of ext names)
        #hidePodcasts
	      adblock
        playlistIcons
        fullScreen
        powerBar
        fullAlbumDate
      ];
      enabledCustomApps = with spicePkgs.apps; [
        new-releases
        localFiles
        lyrics-plus
      ];
    };
}
