require('packer').startup(function(use)
	use 'echasnovski/mini.ai'
	use 'ggandor/leap.nvim'
	use 'ggandor/flit.nvim'
end)

require('mini.ai').setup()

require('leap').add_default_mappings()
require('flit').setup {
  keys = { f = 'f', F = 'F', t = 't', T = 'T' },
  -- A string like "nv", "nvo", "o", etc.
  labeled_modes = "v",
  multiline = true,
  -- Like `leap`s similar argument (call-specific overrides).
  -- E.g.: opts = { equivalence_classes = {} }
  opts = {}
}

