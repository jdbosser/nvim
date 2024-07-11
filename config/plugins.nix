{pkgs, ...}: {
	plugins = {
		fugitive.enable = true; 	
		# plugins.sleuth.enable = true; 	# Currently not in the repository of modules
		# plugins.rhubarb.enable = true; 	# Currently not in the repository of modules	

		which-key.enable = true; 
		indent-blankline.enable = true; 
		luasnip.enable = true; 
		luasnip.extraConfig = {
			enable_autosnippets = true; 
			store_selection_keys = "<Tab>";
		};
		fidget.enable = true; 


		neogen.enable = true; 		
		neogen.snippetEngine = "luasnip";
		
		friendly-snippets.enable = true; 
		
		
		# packer = {
		# 	enable = true; 
		# 	plugins = ["rafamadriz/friendly-snippets"];
		# };


	};
	extraPlugins = [pkgs.vimPlugins.highlight-undo-nvim]; 
	extraConfigLua =  "
		require('highlight-undo').setup({
			duration = 1000,
			undo = {
			  hlgroup = 'HighlightUndo',
			  mode = 'n',
			  lhs = 'u',
			  map = 'undo',
			  opts = {}
			},
			redo = {
			  hlgroup = 'HighlightRedo',
			  mode = 'n',
			  lhs = '<C-r>',
			  map = 'redo',
			  opts = {}
			},
			highlight_for_count = true,
		})	
	";
}


