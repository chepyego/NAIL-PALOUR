# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

@secret = "01482163a9145a4d"  # 16 characters!
cipher.key = @secret
