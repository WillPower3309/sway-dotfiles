{ config, pkgs, ... }:

{
  imports =
    [
      <nixos-hardware/microsoft/surface>
      ./hardware-configuration.nix
    ];
  
  # hostname
  networking.hostName = "surfacePro6";
}
