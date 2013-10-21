class SignupsController < ApplicationController
	def create
		@signup = Signup.new(params[:signup])
		@signup.email.downcase!
		if @signup.save
			render :thankyou
		else
			redirect_to :back, :flash => { :errors => @signup.errors.full_messages.to_sentence}
		end
	end

	def thankyou
		render :thankyou
	end
end
