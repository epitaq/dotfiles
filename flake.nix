{
  description = "My Nix Config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";
    
    # xremap.url = "github:xremap/nix-flake";
    
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    xremap = {
      url = "github:xremap/nix-flake";
    };
  };

  outputs = {self, nixpkgs, nixos-hardware, home-manager, nix-vscode-extensions, ...} @ inputs: {
    nixosConfigurations = {
      # utm setting
      utm = inputs.nixpkgs.lib.nixosSystem {
        system = "aarch64-linux";
        modules = [
          ./hosts/utm/configuration.nix 
        ];
        specialArgs = { inherit inputs;};
      };

      u938 = inputs.nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        modules = [
          ./hosts/u938/configuration.nix 
        ];
        specialArgs = { inherit inputs;};
      };
      # myNixOS = inputs.nixpkgs.lib.nixosSystem {
      #   system = "aarch64-linux";
      #   modules = [
      #     ./configuration.nix
      #   ];
      #   specialArgs = {
      #     inherit inputs;
      #   };
      # };
    };
    homeConfigurations = {
      # utm setting
      utm = inputs.nixpkgs.lib.homeManagerConfiguration {
        pkgs = import inputs.nixpkgs {
          system = "aarch64-linux";
          config.allowUnfree = true;
        };
        extraSpecialArgs = {inherit inputs;};
        modules = [
          ./hosts/utm/home.nix
        ];
      };
      u938 = inputs.home-manager.lib.homeManagerConfiguration {
        pkgs = import inputs.nixpkgs {
          system = "x86_64-linux";
          config.allowUnfree = true;
        };
        extraSpecialArgs = {inherit inputs;};
        modules = [
          ./hosts/u938/home.nix
        ];
      };
      # myHome = inputs.home-manager.lib.homeManagerConfiguration {
      #   pkgs = import inputs.nixpkgs {
      #     system = "aarch64-linux";
      #     config.allowUnfree = true;
      #   };
      #   extraSpecialArgs = {
      #     inherit inputs;
      #   };
      #   modules = [
      #     ./home.nix
      #   ];
      # };
    };
  };
}
