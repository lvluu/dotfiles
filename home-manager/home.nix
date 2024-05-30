
{ pkgs, ... }: {
programs.zoxide.enableZshIntegration=true;
programs.zoxide.enable=true;
programs.hstr.enable=true;
programs.thefuck.enable=true;
programs.fzf.enable=true;
programs = {
	direnv = {
	enable = true;
      nix-direnv.enable = true;
};
};
programs.zsh = {
  enable = true;
  syntaxHighlighting.enable = true;
enableCompletion = true;
  shellAliases = {
    k = "kubectl";
    g = "git";
    
    ll = "ls -l";
    update = "sudo nixos-rebuild switch";
  };
  zplug = {
    enable = true;
    plugins = [
      { name = "zsh-users/zsh-autosuggestions"; } 
    ];
  };
  history.size = 10000;

      oh-my-zsh = {
    enable = true;
    plugins = [ "git" "thefuck" "history" "npm" "docker" "docker-compose"];
    theme = "robbyrussell";
  };

  };

home = {
	stateVersion = "23.05";
	username = "nixos";
	homeDirectory = "/home/nixos";
	};
}
