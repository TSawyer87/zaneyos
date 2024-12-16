{ ... }:

{programs = {
  zsh = {
      enable = true;
      enableCompletion = true;
      syntaxHighlighting.enable = true;
      autosuggestion.enable = true;
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

        eval "$(zoxide init zsh)"
        eval "$(mcfly init zsh)"

        setopt correct                                                  # Auto correct mistakes
        setopt extendedglob                                             # Extended globbing. Allows using regular expressions with *
        setopt nocaseglob                                               # Case insensitive globbing
        setopt rcexpandparam                                            # Array expension with parameters
        setopt nocheckjobs                                              # Don't warn about running processes when exiting
        setopt numericglobsort                                          # Sort filenames numerically when it makes sense
        setopt nobeep                                                   # No beep
        setopt appendhistory                                            # Immediately append history instead of overwriting
        setopt histignorealldups                                        # If a new command is a duplicate, remove the older one
        setopt autocd                                                   # if only directory path is entered, cd there.
        setopt auto_pushd
        setopt pushd_ignore_dups
        setopt pushdminus
      '';
      shellAliases = {
        sv = "sudo nvim";
        fr = "nh os switch --hostname ${host} /home/${username}/zaneyos";
        fu = "nh os switch --hostname ${host} --update /home/${username}/zaneyos";
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
