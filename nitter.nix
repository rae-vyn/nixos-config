{ config, pkgs, options, ... }:
{
  services.nitter = {
    enable = true;
    package = pkgs.nitter.overrideAttrs (old: {
      version = "guest_accounts";
      src = pkgs.fetchFromGitHub {
        owner = "zedeus";
        repo = "nitter";
        rev = "eaedd2aee7be6bc3dd2dceee09dc93052d0046f4";
        hash = "sha256-px0wyCYiI03DefIIF9+Xr95ChyASvg9N//cARFyRM5I=";
      };

      buildInputs =
        old.buildInputs
        ++ [
          (pkgs.buildNimPackage
            rec {
              pname = "oauth";
              version = "b8c163b0d9cfad6d29ce8c1fb394e5f47182ee1c";

              src = pkgs.fetchFromGitHub {
                owner = "CORDEA";
                repo = pname;
                rev = version;
                sha256 = "0k5slyzjngbdr6g0b0dykhqmaf8r8n2klbkg2gpid4ckm8hg62v5";
              };

              propagatedBuildInputs = [
                (pkgs.buildNimPackage
                  rec {
                    pname = "sha1";
                    version = "92ccc5800bb0ac4865b275a2ce3c1544e98b48bc";

                    src = pkgs.fetchFromGitHub {
                      owner = "onionhammer";
                      repo = pname;
                      rev = version;
                      sha256 = "sha256-tWHouIa6AFRmbvJaMsoWKNZX7bzqd3Je1kJ4rVHb+wM=";
                    };
                  })
              ];
            })
        ];
    });
  };
}
