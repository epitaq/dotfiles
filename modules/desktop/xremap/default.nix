{inputs, ...}:

{
  imports = [inputs.xremap.nixosModules.default];

  services.xremap = {
    userName = "epita";
    serviceMode = "system";
    config = {
      modmap = [
        {
          name = "CapsLock is dead";
          remap = {
            CapsLock = "Ctrl_L";
          };
        }
      ];
      keymap = [
        {
          application.not = ["gnome-terminal-server" "Alacritty" "nyaovim" "konsole"];
          remap = {
            C-b = "Left";
            C-f = "Right";
            C-p = "Up";
            C-n = "Down";
            
            M-b = "Ctrl-Left";
            M-f = "Ctrl-Right";
            
            C-a = "Home";
            C-e = "End";
            
            C-u = ["Shift-Home" "BackSpace"];
            C-y = "Shift-Insert";
            
            C-h = "BackSpace";
            C-d = "Delete";
            
            M-h = "Ctrl-BackSpace";
            C-w = "Ctrl-BackSpace";
            M-d = "Ctrl-Delete";

            "Super-a" = "C-a";
            "Super-c" = "C-c";
            "Super-f" = "C-f";
            "Super-n" = "C-n";
            "Super-r" = "C-r";
            "Super-v" = "C-v";
            "Super-p" = "C-p";
            "Super-w" = "C-w";
            "Super-t" = "C-t";
            "Super-x" = "C-x";
            "Super-z" = "C-z";
            "Super-s" = "C-s"; # add epita

            "Super-Shift-a" = "C-a";
            "Super-Shift-c" = "C-c";
            "Super-Shift-f" = "C-f";
            "Super-Shift-n" = "C-n";
            "Super-Shift-r" = "C-r";
            "Super-Shift-v" = "C-v";
            "Super-Shift-p" = "C-p";
            "Super-Shift-w" = "C-w";
            "Super-Shift-t" = "C-t";
            "Super-Shift-x" = "C-x";
            "Super-Shift-z" = "C-z";
          };
        }
        {
          application.only = ["xfce4-terminal" "Alacritty" "gnome-terminal-server" "konsole"];
          remap = {
            "Super-c" = "Ctrl-Shift-c";
            "Super-v" = "Ctrl-Shift-v";
          };
        }
        {
          application.only = ["google-chrome"];
          remap = {
            # "Super-bracketleft" = "M-Left";
            # "Super-bracketright" = "M-Right";

            "Super-0" = "C-0";
            "Super-1" = "C-1";
            "Super-2" = "C-2";
            "Super-3" = "C-3";
            "Super-4" = "C-4";
            "Super-5" = "C-5";
            "Super-6" = "C-6";
            "Super-7" = "C-7";
            "Super-8" = "C-8";
            "Super-9" = "C-9";
          };
        }
      ];
    };
  };
}
