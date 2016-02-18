module Jekyll
  class ThumbTag < Liquid::Tag

    def initialize(tag_name, text, tokens)
      super
      @text = text
    end

    def render(context)
      "<img class='thumb' src='/assets/images/#{@text}'>"
    end
  end
end

Liquid::Template.register_tag('thumb', Jekyll::ThumbTag)
