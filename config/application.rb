require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MailerApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    config.time_zone = "Brasilia"
    # config.eager_load_paths << Rails.root.join("extras")

    # Configuration for Sendgrid
    config.action_mailer.delivery_method = :smtp
    
    config.action_mailer.smtp_settings = {
    address:              'smtp.sendgrid.net',
    port:                 587,
    domain:               'localhost:3000/',
    user_name:            'api_key',
    password:             Rails.application.credentials[:sendgrid][:api_key],
    authentication:       'plain',
    enable_starttls_auto: true }

  end
end
