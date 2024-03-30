{pkgs, ...}: {
  programs.zsh = {
    enable = true;
    autocd = true; # cdなしでファイルパスだけで移動
    enableCompletion = true; # 自動補完
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true; # シンタックスハイライト
    shellAliases = {
      code = "codium";
    };
  };
  
  programs.starship = {
    enable = true;
  };
}
