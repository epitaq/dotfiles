{inputs, pkgs, ...}: {
  nixpkgs = {
    overlays = [
      inputs.nix-vscode-extensions.overlays.default
    ];
  };
  programs.vscode = {
    enable = true;
    package = pkgs.vscodium;

    mutableExtensionsDir = false;
    enableUpdateCheck = false;
    enableExtensionUpdateCheck = false;

    extensions = with pkgs.vscode-marketplace; [
      ms-ceintl.vscode-language-pack-ja
      pkief.material-icon-theme
      enkia.tokyo-night
    ];

    userSettings = builtins.readFile ./settings.json;
  };
}

