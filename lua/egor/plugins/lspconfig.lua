require('lspconfig').clangd.setup {
        cmd = {
            "clangd",
            "--background-index",
            "--suggest-missing-includes",
            '--query-driver="/usr/local/opt/gcc-arm-none-eabi-8-2019-q3-update/bin/arm-none-eabi-gcc"'
        },
        filetypes = {"c", "cpp", "objc", "objcpp"},
}
