GrapeSwaggerRails.options.url      = '/api/v1/swagger_doc'
GrapeSwaggerRails.options.before_action do
  GrapeSwaggerRails.options.app_url = request.base_url
end