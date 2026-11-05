{ config, lib, pkgs, ... }:

{
  #----- NixOnDroid Options
    android-integration = {
      am.enable = true;
      termux-open.enable = true;
      termux-reload-settings.enable = true;
      termux-setup-storage.enable = true;
      termux-wake-lock.enable = true; 
    };
  
  #----- Terminal&StarShip config
  
    terminal.font = "${pkgs.nerdfonts.override { fonts = [ "JetBrainsMono" ]; }}/share/fonts/truetype/NerdFonts/JetBrainsMonoNerdFont-Regular.ttf";
    user.shell = "${pkgs.fish}/bin/fish";
    #starship preset "presetName" -o ~/.config/starship.toml
    
  #----- etcFilesBackup
  
  environment.etcBackupExtension = ".bak";

  #------ Read the changelog before changing this value
  
  system.stateVersion = "24.05";
  environment.motd = null;

  #------ FlakeSetup
  
  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  #------ TimeZone
  
  time.timeZone = "Africa/Lusaka";
}
