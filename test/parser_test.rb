# frozen_string_literal: true

require 'test_helper'
require 'nightingale/parser'

class ParserTest < Minitest::Test
  def setup
    @parser = Nightingale::Parser.new counter: {}, log_file: {}
  end

  def test_processing_a_line
    line = '/contact 184.123.665.067'
    expected = '/contact'
    actual = @parser.parse_line(line)
    assert_equal expected, actual
  end
end
