# Rails.application.config.middleware.insert_before 0, Rack::Cors do
#   allow do
#     origins "*"  # Allow all origins (use specific domains for security)
#     resource "*", headers: :any, methods: [ :get, :post, :options ]
#   end
# end

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "*" # Or specify allowed origins (e.g., 'http://example.com')
    resource "*",
      headers: :any,
      methods: [ :get, :post, :put, :patch, :delete, :options, :head ]
  end
end
