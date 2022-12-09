require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
    config.aws_bucket = ENV.fetch("s3_bucket")
    config.aws_acl    = 'public-read'
    config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7
    config.aws_credentials = {
        access_key_id:     ENV["aws_access_key"],
        secret_access_key: ENV["aws_secret"],
        region: ENV["aws_region"]
    }
    config.storage    = :aws
  end