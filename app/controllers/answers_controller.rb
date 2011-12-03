class AnswersController < ActionController::Base

	def new
		@answer = Answer.new
	end

end
