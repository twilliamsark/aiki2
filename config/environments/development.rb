EMAIL_ADDR = 'twilliamsark@gmail.com'
DEV_EMAIL = 'twilliamsark+yurusu@gmail.com'
EMAIL_PWD = ENV['EMAIL_KEY']
SEND_EMAILS = true
VIDEOS_ONLINE = true
FILTERING = true
ALLOW_SEARCH = true
SHOW_MENU = true
SHOW_DEBUG = true
CHECK_YOUTUBE = false
SHOW_ADMIN_FIELDS = true
DEVELOPMENT_REQUIRE_LOGIN = false
DEVELOPMENT_LOGIN = 'example@example.com'

Aiki::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # # Don't care if the mailer can't send.
  # config.action_mailer.raise_delivery_errors = false
  config.action_mailer.default_url_options = { host: 'localhost:3000' }


  # Mailer settings (See: http://guides.rubyonrails.org/action_mailer_basics.html)
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.perform_deliveries = SEND_EMAILS # Whether or not to actually send emails when calling #deliver on an ActionMailer action. Set to `false` to aid in functional testing.
  # config.action_mailer.logger = nil
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address              => 'smtp.gmail.com',
    :port                 => 587,
    :domain               => EMAIL_ADDR.split('@').last,
    :user_name            => EMAIL_ADDR,
    :password             => EMAIL_PWD,
    :authentication       => 'plain',
    :enable_starttls_auto => true
  }


  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true
end
