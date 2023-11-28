{
  # Import all your configuration modules here
  imports = [
    ./set.nix
    ./bufferline.nix
    ./plugins.nix
    ./lsp.nix
    ./cmp.nix
    ./gitsigns.nix
    ./lualine.nix
    ./telescope.nix
    ./treesitter.nix
    ./toggleterm.nix
  ];

  colorschemes.rose-pine.enable = true; 
}
