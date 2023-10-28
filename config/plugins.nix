{
	plugins = {
		fugitive.enable = true; 	
		# plugins.sleuth.enable = true; 	# Currently not in the repository of modules
		# plugins.rhubarb.enable = true; 	# Currently not in the repository of modules	

		which-key.enable = true; 
		indent-blankline.enable = true; 
		luasnip.enable = true; 
		fidget.enable = true; 
		

		packer = {
			enable = true; 
			plugins = ["rafamadriz/friendly-snippets"];
		};
	};
}


