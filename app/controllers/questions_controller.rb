class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = params[:q]
    if @answer == "I am going to work"
      @result = "Great!"
    elsif @answer.include?("?")
      @result = "Silly question, get dressed and go to work!"
    else
      @result = "I don't care, get dressed and go to work!"
    end
  end
end
