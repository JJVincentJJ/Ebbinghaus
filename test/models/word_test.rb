require 'test_helper'

class WordTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  	@word = Word.new(word: "Deficit", description: "赤字")
  end
  
  test "should be valid" do
  	assert @word.valid?
  end
  
  test "word not be blank" do
  	@word.word = ""
  	assert_not @word.valid?, 'Word should not be blank'
  end
  
  test "description not be blank" do
  	@word.description =""
  	assert_not @word.valid?, 'Description should not be blank'
  end
end
