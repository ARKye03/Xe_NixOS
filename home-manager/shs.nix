{ pkgs, config, ... }:

let
  shellAliases = {
    ll = "ls -l";
    nixsu = "/home/nixarkye/.dotfiles/scripts/nixsu.sh";
    initshell = "/home/nixarkye/.dotfiles/scripts/InitShell.sh";
    homsu = "/home/nixarkye/.dotfiles/scripts/homsu.sh";
    homre = "home-manager switch --option substitute false";
    lvnix = "sudo lvim /home/nixarkye/.dotfiles";
    gc = "git clone";
    codenix = "code /home/nixarkye/.dotfiles";

    #.Net Aliases
    dn = "dotnet new";
    dr = "dotnet run";
    dt = "dotnet test";
    dw = "dotnet watch";
    dwr = "dotnet watch run";
    dwt = "dotnet watch test";
    ds = "dotnet sln";
    da = "dotnet add";
    dp = "dotnet pack";
    dng = "dotnet nuget";
    db = "dotnet build";
  };
in
{
  programs.zsh = {
    enable = true;
    syntaxHighlighting.enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    shellAliases = shellAliases;
    history = {
      ignoreDups = true;
      size = 10000;
      path = "${config.xdg.dataHome}/zsh/history";
    };
  };
  programs.bash = {
    enable = true;
    enableCompletion = true;
    shellAliases = shellAliases;
  };
  programs.starship = {
    enable = true;
    # Configuration written to ~/.config/starship.toml
    settings = pkgs.lib.importTOML ./extra/starship.toml;
  };
}
