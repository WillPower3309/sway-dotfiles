{ config, pkgs, lib, ... }:

let
  vimpkg = pkgs.neovim.override {
    configure = {
      #customRC = ./builtins.readFile ./vimrc;
      plug.plugins = with pkgs.vimPlugins; [
        # Vim Plugins go here
      ];
    };
  };
in {
  environment.systemPackages = [ vimpkg ];
  environment.shellAliases = {
    vi = "nvim";
    vim = "nvim";
  };  
  environment.variables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
  };
}
