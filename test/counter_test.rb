# frozen_string_literal: true

require 'test_helper'
require_relative '../lib/nightingale/counter'

class CounterTest < Minitest::Test
  def setup
    @counter = Nightingale::Counter.new
  end

  def test_adding_to_the_counter
    3.times { @counter.add('cats') }
    5.times { @counter.add('hats') }
    expected = @counter.count
    actual = { 'cats' => 3, 'hats' => 5 }
    assert_equal expected, actual
  end
end
