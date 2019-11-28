# frozen_string_literal: true

require 'test_helper'
require 'nightingale/log_parser'

class LogParserTest < Minitest::Test
  def setup
    @nightingale = Nightingale::LogParser.new
  end

  def expected
    {
      '/help_page/1' => ['126.318.035.038', '929.398.951.889', '722.247.931.582'],
      '/contact'     => ['184.123.665.067'],
      '/home'        => ['184.123.665.067'],
      '/about/2'     => ['444.701.448.104'],
      '/index'       => ['444.701.448.104'],
      '/about'       => ['061.945.150.735']
    }
  end

  def test_it_parses_the_file
    file_path = './test/fixtures/short_webserver.log'
    actual = @nightingale.parse(file_path)
    assert_equal expected, actual
  end
end
