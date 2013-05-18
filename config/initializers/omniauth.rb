OmniAuth.config.logger = Rails.logger
 
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '6CNwJJRGKpwwDiDye62zw', 'OZTkOHcaJfJtEOAGHptgWiXpG8qZv3Zawkdkec1Mmjk'
  provider :github, 'f8b0410a919f68884625', '889c996d173e39fd8134c0f9dbd4160eee0a8183'
  provider :facebook, '536960126344591', '76ea5c3a62fb5d4a16a0ad20ac7c92bd', :scope => 'email'
end