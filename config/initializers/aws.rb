# config/initializers/aws.rb

# 1. Set a default region to prevent the Aws::Errors::MissingRegionError.
# This value is arbitrary if you are NOT using S3, but 'us-east-1' is standard.
# It reads from your environment first, then defaults.
Aws.config[:region] = ENV.fetch("AWS_REGION", "us-east-1")

# 2. Prevent the SDK from trying to connect to the EC2 metadata service.
# Setting blank credentials prevents the automatic fallback lookup, which causes the connection timeout error.
# We only do this if actual AWS credentials are NOT present in the environment.
unless ENV["AWS_ACCESS_KEY_ID"].present?
  Aws.config[:credentials] = Aws::Credentials.new("", "")
end

# NOTE: If you are using the S3 gem for a specific service (like sitemap generation),
# ensure that component is configured correctly later in the boot process.
