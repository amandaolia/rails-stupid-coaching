class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @question = params[:answer]
    if @question.nil?
      @answer = "No question was asked."
    elsif @question == "I am going to work"
      @answer = "Great!"
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
