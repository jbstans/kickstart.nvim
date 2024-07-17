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
          ['https://json.schemastore.org/chart.json'] = { 'chart.y*l', 'values.y*l' },
          ['https://raw.githubusercontent.com/microsoft/azure-pipelines-vscode/master/service-schema.json'] = {
            '.ado/**/*.y*l',
            '*build.y*l',
            '*release.y*l',
            'commit-to-pr.yaml',
          },
        },
      },
    },
  },
}
