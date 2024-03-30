{pkgs, ...}: {
  home.packages = with pkgs; [
    screen
  ];

  home.file = {
    "screenrc" = {
      target = ".screenrc";
      source = ./screenrc;
    };
  };
}