# frozen_string_literal: true

SwaggerDocsGenerator.configure do |config|
  config.swagger = '2.0'
  config.base_path = '/'
  config.host = 'localhost:3000'
  config.schemes = ['http']
  config.external_docs = {
    description: 'Find more information',
    url: 'https://github.com/Dev-Crea/swagger-docs-generator'
  }
end

SwaggerDocsGenerator.configure_info do |info|
  info.title = 'API http://example.com'
  info.description = <<EOS
API fort management of product with category by product. It's an example of
rails project with swagger_doc_generator gem for generate swagger doc file.
EOS
  info.version = 'v1'
  info.terms_of_service = 'http://localhost:3000/cgu'
  info.contact = {
    name: 'API Support',
    url: 'http://localhost:3000/support',
    email: 'api@support.localhost.example'
  }
  info.license = {
    name: 'MIT',
    url: 'http://localhost:3000/license'
  }
end
