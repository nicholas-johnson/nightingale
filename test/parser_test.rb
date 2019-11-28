# frozen_string_literal: true

require 'test_helper'
require 'nightingale/parser'

class ParserTest < Minitest::Test
  def setup
    @parser = Nightingale::Parser.new counter: {}, log_file: {}
  end

  def test_processing_a_path
    line = '/contact 184.123.665.067'
    expected = '/contact'
    actual = @parser.parse_path(line)
    assert_equal expected, actual
  end

  def test_processing_an_ip
    line = '/contact 184.123.665.067'
    expected = '184.123.665.067'
    actual = @parser.parse_ip(line)
    assert_equal expected, actual
  end
end
