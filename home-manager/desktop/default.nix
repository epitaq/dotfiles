{pkgs, ...}: {
  imports = [
    ./firefox
    ./vscode
    ./mozc
  ];
}
