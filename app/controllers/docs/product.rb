module Docs
  module Product
    extend Docs::Base

    swagger_controller ProductsController, 'Product management'

    swagger_doc ProductsController, :index, {
      summary: 'Product list',
      consumes: ['application/json', 'application/xml'],
      produces: ['application/json', 'application/xml'],
      responses: [200, 422]
      # responses: {
      #   OK: {
      #     description: 'Product list finding'
      #   }
      # }
    }

    swagger_doc ProductsController, :create, {
      summary: 'Create product'
    }

    swagger_doc ProductsController, :new, {
      summary: 'New product',
      description: 'Display a form product.'
    }

    swagger_doc ProductsController, :edit, {
      summary: 'Edit product',
      description: 'Display a form product.',
      parameters: [
        [ :name, :form_data, 'Name to product', :string, true ],
        [ :category, :form_data, 'category ID to product', :string ]
      ],
        # name: in, description, required, other
        # name -> Symbol
        # in -> Symbol
        # description -> String
        # required -> Boolean
        # other -> Hash
      # parameters: [
      #   { name: 'name', in: 'formData', required: 'true' }
      # ]
    }

    swagger_doc ProductsController, :show, {
      summary: 'Show product',
      parameters: [
        [ :id, :path, 'ID unique to product', :string, true, { default_value: 4 } ]
      ],
      # parameters: [
      #   { name: 'id', in: 'path', description: 'ID unique to product', required: true, type: 'string' }
      # ],
      description: <<EOS
## Return a product

Display information about product
EOS
    }

    swagger_doc ProductsController, :update, {
      summary: 'Update product',
      description: 'Update product'
    }
  end
end
