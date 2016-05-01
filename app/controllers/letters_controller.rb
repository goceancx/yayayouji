class LettersController < ApplicationController
	 
 	# def new
  # 		@letter = Letter.new
  # 	end
	def show
	  	@letter =Letter.find(params[:id])
	    # @comments = @issue.comments
	 end


	def new
	  	@letter =Letter.new
	end

	def create
		Letter.create(letter_params)
   		redirect_to :letterlist
	end

	def destroy
		i = Letter.find(params[:id])
		i.destroy
		redirect_to :letterlist
	end
private 
    def letter_params
      params.require(:letter).permit(:title, :content)
    end
end