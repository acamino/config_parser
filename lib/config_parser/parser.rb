module ConfigParser
  class Parser
    def initialize(contents)
      @contents = contents
    end

    def parse
      content_without_comments
        .map { |line| PropertyParser.new(line).parse }
        .inject({}) { |conf, p| conf.merge!(p.key => p.value) }
    end

    private

    attr_reader :contents

    def content_without_comments
      contents.map { |line| strip_comment(line) }.reject(&:empty?)
    end

    def strip_comment(content)
      comment_delimeter = '#'
      pos = content.index(comment_delimeter)
      return content.chars.take(pos).join if pos

      content
    end
  end
end
