require_relative '../lib/nightingale/input'

class InputTest < Minitest::Test
  def setup
    @fixture = './fixtures/cats.log'
    @input = new Nightingale::Input(fixture)
  end

  def test_reading a file
    @input.readLines {|line| puts line}
  end
end
# class InputTest < Minitest::Test
#   def setup
#     @test_obj = Object.new
#     @test_obj.extend(Nightingale::Input)
#   end

#   def test_speed_reported
#     filename = 'fixtures/cats.log'
#     assert_equal 'File is found', @test_obj.read(filename) |line| {}
#   end
# end
