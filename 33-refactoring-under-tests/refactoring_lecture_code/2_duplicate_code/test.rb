require 'minitest'
require 'minitest/autorun'
require 'minitest/mock'
require_relative './code.rb'

class DuplicateCodeTest < Minitest::Test
  def test_that
    car = Minitest::Mock.new
    car.expect(:start, nil)
    Car.stub(:new, car) do
      Driver.new.car_routine
    end
    assert car.verify
  end
end
