{pkgs, ...}: {
  programs.git = {
    enable = true;
    userName = "epitaq";
    userEmail = "somaok2004@gmail.com";
  };

  # GitHub CLI
  programs.gh = {
    enable = true;
    settings = {
      editor = "nvim";
    };
  };
}
