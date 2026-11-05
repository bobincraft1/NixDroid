{ pkgs, ... }:
{
  #------- packages -----------#
    environment.packages = with pkgs; [
      starship
      fish
      fastfetch
      chafa
      neovim
      git
      gh
      tmux
      which
      tree
      hello
      lazygit
      jujutsu
    ];

}
