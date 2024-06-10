{pkgs, ...}:
{
	extraPlugins = with pkgs.vimPlugins; [luasnip];
	plugins = {

		cmp.enable = true; 
		
		cmp-nvim-lsp.enable = true; 
		cmp_luasnip.enable = true; 
		# friendly-snippets.enable = true; 	# TODO
		
		cmp.settings.snippet.expand = ''
		  function(args)
		    require('luasnip').lsp_expand(args.body)
		  end
		'';
		cmp.settings.mapping = {
		  "<C-Space>" = "cmp.mapping.complete()";
		  "<C-d>" = "cmp.mapping.scroll_docs(-4)";
		  "<C-e>" = "cmp.mapping.close()";
		  "<C-f>" = "cmp.mapping.scroll_docs(4)";
		  "<CR>" = "cmp.mapping.confirm({ select = true })";
		  "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
		  "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
		};
		
		cmp.settings.sources = [

				{name = "nvim_lsp";}
				{name = "luasnip";}
				{name = "buffer";}
				
		]; 
	};

}
