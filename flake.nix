{
  inputs.spicetify-nix.url = "github:the-argus/spicetify-nix";
  inputs.musnix.url = "github:musnix/musnix";
  outputs = { nixpkgs, musnix, ... } @inputs : {
    # replace 'joes-desktop' with your hostname here.
    nixosConfigurations.raevyn-pc = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = inputs;
      modules = [
      	musnix.nixosModles.musnix
        ./configuration.nix
	./spicetify.nix
      ];
    };
  };
}

