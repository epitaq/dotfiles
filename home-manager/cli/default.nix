{pkgs, ...}: {
    imports = [
        ./neovim
        ./zsh
        ./git
        # ./screen
    ];
}