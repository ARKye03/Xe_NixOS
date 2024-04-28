{ ... }: {
  nixpkgs.config.allowUnfree = true;

  programs = {
    bat.enable = true;
    ripgrep.enable = true;
    zoxide.enable = true;
    fzf.enable = true;
    fd.enable = true;
    chromium.enable = true;
    firefox.enable = true;
    neovim.enable = true;
    btop.enable = true;
    yt-dlp.enable = true;

    home-manager.enable = true;
  };
}
