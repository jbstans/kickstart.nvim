return {
  require('lspconfig').yamlls.setup {
    settings = {
      yaml = {
        format = {
          enable = true,
          singleQuote = true,
        },
        schemaStore = {
          url = 'https://www.schemastore.org/api/json/catalog.json',
          enable = true,
        },
        schemas = {
          ['https://raw.githubusercontent.com/microsoft/azure-pipelines-vscode/master/service-schema.json'] = '.ado/**/*.y*l',
        },
      },
    },
  },
}
