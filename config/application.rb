require_relative 'boot'
ENV['RANSACK_FORM_BUILDER'] = '::SimpleForm::FormBuilder'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AliveCommerce
	class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.time_zone = 'America/Fortaleza'
    config.active_support.to_time_preserves_timezone = :zone

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    config.i18n.default_locale = "pt-BR"

		config.generators do |g|
			g.test_framework :rspec,
											 fixtures: true,
											 view_specs: false,
											 helper_specs: false,
											 routing_specs: false
			g.fixture_replacement :factory_bot, dir: 'spec/factories'
		end

    # Configure the default encoding used in templates for Ruby 1.9.
    config.encoding = "utf-8"
    config.assets.enabled = true

    #configuracão pra rotas de erros
    config.exceptions_app = self.routes
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
	end
end
