AttributeNormalizer.configure do |config|
  config.default_normalizers = :blank, :squish

  config.normalizers[:downcase] = ->(value, _options) { value.is_a?(String) ? value.squish.downcase.presence : value }
  config.normalizers[:parameterize] = ->(value, _options) { value.is_a?(String) ? value.parameterize.presence : value }
  config.normalizers[:phone] = ->(value, _options) { value.is_a?(String) ? PhonyRails.normalize_number(value).presence : value }
  config.normalizers[:titleize] = ->(value, _options) { value.is_a?(String) ? value.squish.titleize.presence : value }
  config.normalizers[:underscore] = ->(value, _options) { value.is_a?(String) ? value.squish.underscore.presence : value }
  config.normalizers[:upcase] = ->(value, _options) { value.is_a?(String) ? value.squish.upcase.presence : value }
  config.normalizers[:utf] = ->(value, _options) { value.is_a?(String) ? value.encode!('UTF-8', 'binary', invalid: :replace, undef: :replace, replace: '').squish.presence : value }
end
