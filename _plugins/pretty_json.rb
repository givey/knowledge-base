module Jekyll
  module JsonFilter
    def pretty_json(input)
      JSON.pretty_generate(input).gsub("\n", "\r\n")
    end

    def json(input)
      input.to_json
    end
  end
end

Liquid::Template.register_filter(Jekyll::JsonFilter)
