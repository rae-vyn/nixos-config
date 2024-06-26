{
  inputs.spicetify-nix.url = "github:A1ca7raz/spicetify-nix";
  inputs.musnix.url = "github:musnix/musnix";
  outputs = { nixpkgs, musnix, ... } @inputs : {
    # replace 'joes-desktop' with your hostname here.
    nixosConfigurations.raevyn-pc = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = inputs;
      modules = [
      	musnix.nixosModules.musnix
        ./configuration.nix
	./spicetify.nix
      ];
    };
  };
}

