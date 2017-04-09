require 'net/http'
require 'json'
require 'cgi'

module Jekyll
  module YoutubeFilter
    def youtube(input)
      uri = URI('https://www.youtube.com/oembed?format=json&url=' + input.strip)
      res = Net::HTTP.get_response(uri)
      return {} if res.code != '200'

      data = JSON.parse(res.body)
      {
        'title' => data['title'],
        'image' => data['thumbnail_url'],
        'src' => data['html'][/src=\"([^\"]+)\"/, 1]
      }
    end
  end
end

Liquid::Template.register_filter(Jekyll::YoutubeFilter)
