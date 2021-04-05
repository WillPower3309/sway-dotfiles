{ config, pkgs, ... }:

{
  imports = [];

  # TODO: LDFLAGS, any other FLAGS, and -j

  nixpkgs.overlays = [
    (final: prev: {
      stdenv = prev.stdenvAdapters.addAttrsToDerivation {
        NIX_CFLAGS_COMPILE = "-pipe -march=native -O2";
	NIX_LDFLAGS = "";
      } prev.stdenv;
    })
  ];
}
