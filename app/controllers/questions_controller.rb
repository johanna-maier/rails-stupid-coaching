class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input = params[:response]


    @coach_answer
    @last_letter = @user_input[-1]

    if @user_input == 'I am going to work'
      @coach_answer = 'Great!'
    elsif @last_letter == '?'
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
