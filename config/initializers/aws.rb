# config/initializers/aws.rb

# This ensures the 'Aws' constant is defined before it's used.
require "aws-sdk-core"

# The rest of your configuration logic:
# 1. Set a default region to prevent the Aws::Errors::MissingRegionError.
Aws.config[:region] = ENV.fetch("AWS_REGION", "us-east-1")

# 2. Prevent the SDK from trying to connect to the EC2 metadata service
# by setting dummy credentials if real ones aren't present.
unless ENV["AWS_ACCESS_KEY_ID"].present?
  Aws.config[:credentials] = Aws::Credentials.new("", "")
end
