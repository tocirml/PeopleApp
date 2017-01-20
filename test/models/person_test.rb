require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "name" do
  	p = Person.new
  	assert_not p.save
  end

end
