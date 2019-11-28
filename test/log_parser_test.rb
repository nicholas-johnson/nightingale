# frozen_string_literal: true

require 'test_helper'
require 'nightingale/log_parser'

class LogParserTest < Minitest::Test
  def setup
    @nightingale = Nightingale::LogParser.new
  end

  def test_it_parses_the_file
    file_path = './test/fixtures/short_webserver.log'
    expected = { '/help_page/1' => 3,
                 '/contact' => 1,
                 '/home' => 1,
                 '/about/2' => 1,
                 '/index' => 1,
                 '/about' => 1 }
    actual = @nightingale.parse(file_path)
    assert_equal expected, actual
  end
end
