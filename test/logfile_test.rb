# frozen_string_literal: true

require 'test_helper'
require 'nightingale/logfile'

class InputTest < Minitest::Test
  def setup
    @fixture = './test/fixtures/cats.log'
    @input = Nightingale::Logfile.new(@fixture)
    @lines = []
  end

  def stub(row)
    @lines.push row
  end

  def test_input_read_lines
    @input.read_lines { |line| stub(line) }
    expected = ['Hello Cats', 'Hello Bats']
    actual = @lines
    assert_equal expected, actual
  end
end
