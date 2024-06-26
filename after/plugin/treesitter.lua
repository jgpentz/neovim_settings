require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "javascript", "typescript", "tsx", "html", "css", "python", "go", "c", "lua", "vim", "rust", "vimdoc", "query" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  -- Auto tags for html
  autotag = {
    enable = true,
  },

  highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}


-- Configuration for the hack hdl (nand2tetris) parser
local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.hackhdl= {
  install_info = {
    url = "~/Code/tree-sitter-nand2tetris/tree-sitter-hackhdl", -- local path or git repo
    files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
    -- optional entries:
    branch = "main", -- default branch in case of git repo if different from master
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = true, -- if folder contains pre-generated src/parser.c
  },
  filetype = "hdl", -- if filetype does not match the parser name
}

vim.filetype.add({
    extension = {
        hdl = 'hackhdl',
    }
})

-- Configuration for the hack asm (nand2tetris) parser
parser_config.hackasm= {
  install_info = {
    url = "~/Code/tree-sitter-nand2tetris/tree-sitter-hackasm", -- local path or git repo
    files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
    -- optional entries:
    branch = "main", -- default branch in case of git repo if different from master
    generate_requires_npm = false, -- if stand-alone parser without npm dependencies
    requires_generate_from_grammar = true, -- if folder contains pre-generated src/parser.c
  },
  filetype = "asm", -- if filetype does not match the parser name
}

vim.filetype.add({
    extension = {
        hdl = 'hackasm',
    }
})
