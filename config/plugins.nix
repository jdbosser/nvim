{
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
		

		packer = {
			enable = true; 
			plugins = ["rafamadriz/friendly-snippets"];
		};
	};
}


