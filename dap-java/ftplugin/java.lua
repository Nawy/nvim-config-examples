local config = {
  cmd = {
    -- command configuration
  },
  settings = {
    -- settings configuration
  },
  init_options = {
    bundles = {
      vim.fn.glob("/path/to/java-debug/com.microsoft.java.debug.plugin/target/com.microsoft.java.debug.plugin-0.42.0.jar", 1)
    },
  },
}

config['on_attach'] = function(client, bufnr)
  require('jdtls').setup_dap({ hotcodereplace = 'auto' })
end

-- This starts a new client & server,
-- or attaches to an existing client & server depending on the `root_dir`.
require('jdtls').start_or_attach(config)
