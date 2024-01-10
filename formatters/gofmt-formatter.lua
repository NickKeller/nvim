local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "gofumpt",
    meta = {
        url = "https://pkg.go.dev/mvdan.cc/gofumpt",
        description = "Formats go programs.",
        notes = {
            "It uses tabs for indentation and blanks for alignment.",
            "Aligntment assumes that the editor is using a fixed-width font.",
        },
    },
    method = FORMATTING,
    filetypes = { "go" },
    generator_opts = {
        command = "gofumpt",
        to_stdin = true,
        arguments = {"-s", "-w", "$FILENAME"}
    },
    factory = h.formatter_factory,
})
