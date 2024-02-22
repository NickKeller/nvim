local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "gofumpt",
    method = FORMATTING,
    filetypes = { "go" },
    generator_opts = {
        command = "gofumpt",
        to_stdin = true,
        arguments = {"-s", "-w", "$FILENAME"}
    },
    factory = h.formatter_factory,
})
