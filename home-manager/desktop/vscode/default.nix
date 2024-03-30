{inputs, pkgs, ...}: {
  nixpkgs = {
    overlays = [
      inputs.nix-vscode-extensions.overlays.default
    ];
  };
  programs.vscode = {
    enable = true;
    extensions = with pkgs.vscode-marketplace; [
      ms-ceintl.vscode-language-pack-ja
      pkief.material-icon-theme
    ];
  };
}

