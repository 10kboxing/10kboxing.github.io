require 'date'

module Jekyll

  module Duration

    def years(value)
      return unless value
      duration = DateTime.now.mjd - DateTime.parse(value).mjd
      duration.to_i / 365
    end

  end

end

Liquid::Template.register_filter(Jekyll::Duration)
