{
  imports = [
    ../../home-manager/cli
    ../../home-manager/desktop
  ];

  home = rec {
    username = "epita";
    homeDirectory = "/home/${username}";
    stateVersion = "23.11";
  };
  programs.home-manager.enable = true;
}
