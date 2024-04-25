{ ... }: {
  nixpkgs.config.allowUnfree = true;

  programs = {
    bat.enable = true;
    zoxide.enable = true;
    fzf.enable = true;
    chromium.enable = true;
    firefox.enable = true;

    home-manager.enable = true;
  };
}
