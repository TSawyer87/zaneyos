{ pkgs, ... }:

{programs = {
  bash = {
      enable = true;
      enableCompletion = true;
      profileExtra = ''
        #if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
        #  exec Hyprland
        #fi
      '';
      initExtra = ''
        fastfetch
        if [ -f $HOME/.zshrc-personal ]; then
          source $HOME/.zshrc-personal
        fi

        eval "$(zoxide init bash)"
        eval "$(mcfly init bash)"
        shopt -s autocd

      '';
      shellAliases = {
        sv = "sudo nvim";
      #fr = "nh os switch --hostname $(builtins.hostName) /home/$(builtins.userName)/zaneyos";
      #fu = "nh os switch --hostname $(builtins.hostName) --update /home/$(builtins.userName)/zaneyos";
        zu = "sh <(curl -L https://gitlab.com/Zaney/zaneyos/-/raw/main/install-zaneyos.sh)";
        ncg = "nix-collect-garbage --delete-old && sudo nix-collect-garbage -d && sudo /run/current-system/bin/switch-to-configuration boot";
        v = "nvim";
        cat = "bat";
        ls = "eza --icons";
        ll = "eza -lh --icons --grid --group-directories-first";
        la = "eza -lah --icons --grid --group-directories-first";
        ".." = "cd ..";
        "...." = "cd ../../";
        yz = "yazi";
        lg = "lazygit";
      };
    };
  };
}
