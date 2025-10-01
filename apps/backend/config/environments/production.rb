require "active_support/core_ext/integer/time"

Rails.application.configure do
  # allow access from frontend hosting providers
  config.hosts << /.*\.onrender\.com/
  config.hosts << /.*\.vercel\.app/

  # performance
  config.cache_classes = true
  config.eager_load = true
  config.public_file_server.enabled = ENV["RAILS_SERVE_STATIC_FILES"].present?

  # error handling
  config.consider_all_requests_local = false

  # logging
  config.log_level = :info
  config.log_tags = [:request_id]
  config.log_formatter = ::Logger::Formatter.new
  config.active_support.report_deprecations = false

  if ENV["RAILS_LOG_TO_STDOUT"].present?
    logger           = ActiveSupport::Logger.new(STDOUT)
    logger.formatter = config.log_formatter
    config.logger    = ActiveSupport::TaggedLogging.new(logger)
  end

  # active storage
  config.active_storage.service = :local

  # i18n
  config.i18n.fallbacks = true

  # mailer
  config.action_mailer.perform_caching = false

  # active record
  config.active_record.dump_schema_after_migration = false
end
