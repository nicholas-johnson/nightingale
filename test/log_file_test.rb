# frozen_string_literal: true

require 'test_helper'
require_relative '../lib/nightingale/log_file'

class InputTest < Minitest::Test
  def setup
    @fixture = './test/fixtures/cats.log'
    @input = Nightingale::LogFile.new(@fixture)
    @lines = []
  end

  def stub(row)
    @lines.push row
  end

  def test_input_read_lines
    @input.read_lines { |line| stub(line) }
    assert_equal ['Hello Cats', 'Hello Bats'], @lines, 'File was read'
  end
end

