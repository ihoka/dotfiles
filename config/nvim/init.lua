require('packer').startup(function(use)
	use 'echasnovski/mini.ai'
	use 'echasnovski/mini.surround'
end)

require('mini.ai').setup()

require('mini.surround').setup()

