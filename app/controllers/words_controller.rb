class WordsController < ApplicationController
  def index
    @words = Word.all
  end
  
  def new
  @word = Word.new
  end
  
  def create
  	@word = Word.new(word_params)
    if @word.valid?
    	@word.save
    end
    render 'new'
  end
  def destroy
  	@word = Word.find(params[:id])
  	@dele = @word
  	@dele.destroy
  	@words = Word.all
  	render 'index'
  end
  private
  	def word_params
  		params.require(:word).permit(:word, :description)
  	end
end
