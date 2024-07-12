
{
	
	plugins.treesitter = {
		
		enable = true; 
		nixvimInjections = true;
		
		# From the nixvim documentation
		# https://nix-community.github.io/nixvim/plugins/treesitter/settings/index.html

		settings = {
		  auto_install = false;
		  ensure_installed = [
			"c" "lua" "vim" "vimdoc" "markdown" "markdown_inline" "python" "rust"
		  ];
		  highlight = {
		    enable = true;
		  };
		  incremental_selection = {
		    enable = true;
		    keymaps = {
		      init_selection = "gnn";
		      node_decremental = "grm";
		      node_incremental = "grn";
		      scope_incremental = "grc";
		    };
		  };
		  indent = {
		    enable = true;
		  };
		  parser_install_dir = "$HOME/.config/nvim/treesitter";
		  sync_install = false;
		};

	};

}
