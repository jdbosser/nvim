{pkgs, ...}:
{
	extraPlugins = with pkgs.vimPlugins; [luasnip];
	plugins = {

		nvim-cmp.enable = true; 
		
		cmp-nvim-lsp.enable = true; 
		cmp_luasnip.enable = true; 
		# friendly-snippets.enable = true; 	# TODO
		
		nvim-cmp.snippet.expand = "luasnip";
		nvim-cmp.mappingPresets = ["insert"];
		
		nvim-cmp.sources = [
			
			{
				name = "nvim_lsp";
			}

			{name = "luasnip"; }
			{name = "buffer"; }

		];

	};

}
