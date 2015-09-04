require 'action_view'

require 'normalize_country'

module CountryFlags
  module Helper

    include ActionView::Helpers::AssetUrlHelper
    include ActionView::Helpers::AssetTagHelper

    # returns path to flag image
    # use ISO-3166 Alpha 2 country codes
    # format can be :png or :gif
    def country_flag_path( country_code, format = :png )
      unless [:png, :gif].include?(format)
        raise(ArgumentError, 'format must be :png or :gif')
      end

      return '' unless country_code && !country_code.empty?

      path = "country_flags/#{format}/#{country_code.downcase}.#{format}"
      image_path path
    end


    def country_flag( country_code, options = {} )
      options = {format: :png}.merge(options)

      country_name = NormalizeCountry( country_code, to: :short )

      return '' unless country_name

      image_tag country_flag_path(country_code, options[:format]),
        alt: country_name, title: country_name
    end
  end
end
