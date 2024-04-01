{pkgs, ...}: {
  programs.firefox = {
    enable = true;

    policies = {
      ExtensionSettings = with builtins;
        let extension = shortId: uuid: {
          name = uuid;
          value = {
            install_url = "https://addons.mozilla.org/en-US/firefox/downloads/latest/${shortId}/latest.xpi";
            installation_mode = "normal_installed";
          };
        };
        in listToAttrs [
          (extension "tree-style-tab" "treestyletab@piro.sakura.ne.jp")
          (extension "ublock-origin" "uBlock0@raymondhill.net")
          (extension "bitwarden-password-manager" "{446900e4-71c2-419f-a6a7-df9c091e268b}")
          (extension "clearurls" "{74145f27-f039-47ce-a470-a662b129930a}")
          (extension "vimium-ff" "")
          (extension "traduzir-paginas-web" "")
        ];
    };
  };
}