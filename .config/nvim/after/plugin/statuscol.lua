local builtin = require("statuscol.builtin")
require("statuscol").setup({
	relculright = true,
	segments = {
		{ text = { "%s" } },
		{ text = { builtin.foldfunc } },
		{ text = { builtin.lnumfunc, " " } },
	},
})
