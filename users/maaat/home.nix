{ config, pkgs, ... }:

{
  home.username = "maaat";
  home.homeDirectory = "/home/maaat";

  nixpkgs.config.allowUnfree = true;
  home.packages = [
    pkgs.pfetch
    pkgs.exa
    pkgs.btop
    pkgs.htop
    pkgs.scrcpy

    # Gui
    pkgs.pavucontrol
    pkgs.screenkey

    # Work
    pkgs.vscode
    pkgs.nodejs
  ];

  programs.starship = {
    enable = true;
    # Configuration written to ~/.config/starship.toml
    settings = {
      character = {
        success_symbol = "[➜](bold green)";
        error_symbol = "[➜](bold red)";
      };
    };
  };

  programs.zsh = {
    enable = true;
    shellAliases = {
      ls = "exa --group-directories-first --icons";
      ll = "ls -l";
      la = "ls -la";
      v = "nvim";
      vi = "nvim";
      vim = "nvim";
    };
    history = {
      size = 1000000;
      path = "${config.xdg.dataHome}/zsh/history"; # ~/.local/share/zsh/history
    };
    plugins = [
      {
        # will source fast-syntax-highlighting.plugin.zsh
        name = "fast-syntax-highlighting";
	src = pkgs.fetchFromGitHub {
          owner = "zdharma-continuum";
          repo = "fast-syntax-highlighting";
          rev = "v1.55";
          sha256 = "0h7f27gz586xxw7cc0wyiv3bx0x3qih2wwh05ad85bh2h834ar8d";
        };
      }
    ];
  };
  
  programs.neovim.withNodeJs = true;

  programs.git = {
    enable = true;
    userName  = "Rahmat Ardiansyah";
    userEmail = "rahmatardiansyah147@gmail.com";
  };

  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
