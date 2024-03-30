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
      bbenoist.nix
    ];

    userSettings = {
      "workbench.startupEditor" = "none";
      "workbench.iconTheme" = "material-icon-theme";
      "git.autofetch" = true;
      "git.confirmSync" = false;
      "editor.wordWrap" = "on";
      "editor.dragAndDrop" = false;
      "window.restoreWindows" = "none";

      "javascript.updateImportsOnFileMove.enabled" = "always";
      "explorer.confirmDelete" = false;

      "editor.fontFamily" = "HackGen35 Console";
      "editor.fontSize" = 14;
      "terminal.integrated.fontSize" = 14;
      "explorer.sortOrder" = "type";
      "security.workspace.trust.untrustedFiles" = "open";
      "editor.unicodeHighlight.includeComments" = false;
      "redhat.telemetry.enabled" = true;
      "terminal.integrated.inheritEnv" = false;
      "editor.guides.highlightActiveIndentation" = "always";
      "git.openRepositoryInParentFolders" = "never";
      "update.showReleaseNotes" = false;
      "workbench.colorTheme" = "Tokyo Night Storm";

      "editor.accessibilitySupport" = "off";
      "editor.tabSize" = 2;

      "security.workspace.trust.enabled" = false;
    };
  };
}

