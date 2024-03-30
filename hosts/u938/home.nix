{
  imports = [
    ../../home-manager/cli
  ];

  home = rec {
    username = "epita";
    homeDirectory = "/home/${username}";
    stateVersion = "23.11";
  };
  programs.home-manager.enable = true;
}
