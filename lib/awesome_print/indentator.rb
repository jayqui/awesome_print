module AwesomePrint
  class Indentator

    attr_reader :shift_width, :indentation

    def initialize(indentation)
      @indentation = indentation
      @shift_width = indentation.freeze
    end

    def indent(&block)
      @indentation += shift_width
      block.call if block_given?
    ensure
      @indentation -= shift_width
    end
  end
end
