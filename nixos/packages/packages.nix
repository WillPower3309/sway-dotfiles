{ config, pkgs, ... }:

{
  imports = [
    ./neovim.nix
  ];

  nixpkgs.config.allowUnfree = true;


  programs.sway = {
    enable = true;
    extraPackages = with pkgs; [
      swayidle
      xwayland
      waybar
      mako
      kanshi
      swaybg
      wofi
      autotiling
      brightnessctl
    ];
  };

  environment.systemPackages = with pkgs; [
    alacritty
    qutebrowser
    neovim
    emacs
    discord
    pavucontrol
    git
    neofetch
    mpv
    youtube-dl
    pulseeffects-pw
    numix-icon-theme
    numix-gtk-theme
    openconnect
    remmina
    gnome3.nautilus
    nextcloud-client
    keepassxc
    ungoogled-chromium
    gcc
    valgrind
    gnumake
    glib # allows gsettings command
  ];
}
