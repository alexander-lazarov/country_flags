require 'rails'

module CountryFlags
  class Railtie < ::Rails::Railtie
    initializer 'country_flags.view_helpers' do
      ActionView::Base.send :include, Helper
      Rails.application.config.assets.precompile += %w(country_flags/png/* country_flags/gif/*)
    end
  end
end