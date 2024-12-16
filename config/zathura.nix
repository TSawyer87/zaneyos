{ pkgs, ... }:

{
  programs = {
    zathura = {
    enable = true;
    extraConfig = builtins.readFile ./zathurarc;
  };
  };
home.packages = with pkgs; [
    inputs.zathura.packages.${pkgs.system}.default
  ];
}
