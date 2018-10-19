require 'test_helper'

class ImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
    @image = Image.new(name: "test", isbn: "9787777777777" ,link: "test")
  end

  test "should be valid" do
    assert @image.valid?
  end

  test "name length should <= 64" do
    @image.name = '-' * 65
    assert_not @image.valid?
  end



end
