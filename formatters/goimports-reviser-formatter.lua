local h = require("null-ls.helpers")
local methods = require("null-ls.methods")

local FORMATTING = methods.internal.FORMATTING

return h.make_builtin({
    name = "goimports-reviser",
    method = FORMATTING,
    filetypes = { "go" },
    generator_opts = {
        command = "goimports-reviser",
        to_stdin = true,
        arguments = {"-company-prefixes", "'go.goms.io/aks/rp'", "-excludes", "'proto/'", "-rm-unused", "$FILENAME"}
    },
    factory = h.formatter_factory,
})
