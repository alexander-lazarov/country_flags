require 'rails'

module CountryFlags
  class Railtie < ::Rails::Railtie
    initializer 'country_flags.view_helpers' do
      ActionView::Base.send :include, Helper
    end
  end
end