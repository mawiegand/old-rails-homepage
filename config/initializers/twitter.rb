TWITTER_CONSUMER_KEY = 'mA8sE2Y9et4oy9yRiflZWg'
TWITTER_CONSUMER_SECRET = 'ERYRsjiTA1TH3xRaL8k5UYUc5ZVLAa6okBmxDP8Vg'
TWITTER_OAUTH_TOKEN = '780313231-H62ohILJRH2cMA0m2E7K92y9VHkUQ8TvUEmnsmHv'
TWITTER_OAUTH_TOKEN_SECRET = '5inuffsOx2gUUrv2Ig1jXUZRRT7qZQDxAl7z6ops'

Twitter.configure do |config|
  config.consumer_key       = TWITTER_CONSUMER_KEY
  config.consumer_secret    = TWITTER_CONSUMER_SECRET
  config.oauth_token        = TWITTER_OAUTH_TOKEN
  config.oauth_token_secret = TWITTER_OAUTH_TOKEN_SECRET
end

TweetStream.configure do |config|
  config.consumer_key       = TWITTER_CONSUMER_KEY
  config.consumer_secret    = TWITTER_CONSUMER_SECRET
  config.oauth_token        = TWITTER_OAUTH_TOKEN
  config.oauth_token_secret = TWITTER_OAUTH_TOKEN_SECRET
  config.auth_method        = :oauth
end
