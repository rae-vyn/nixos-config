{
  inputs.spicetify-nix.url = "github:the-argus/spicetify-nix";

  outputs = { nixpkgs, ... } @inputs : {
    # replace 'joes-desktop' with your hostname here.
    nixosConfigurations.raevyn-pc = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      specialArgs = inputs;
      modules = [ 
        ./configuration.nix
	      ./spicetify.nix
      ];
    };
  };
}

