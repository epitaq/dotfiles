{pkgs, ...}: {
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    extraConfig = builtins.readFile ./vimrc;
  };

  home.file = {
    "molokai.vim" = {
      target = ".config/nvim/colors/molokai.vim";
      source = ./molokai.vim;
    };
  };
}