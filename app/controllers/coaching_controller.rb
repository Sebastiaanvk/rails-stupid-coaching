class CoachingController < ApplicationController
  def ask

  end

  def answer
    @message = coach_answer(params[:query])
  end

  private

  def coach_answer(your_message)
    result = coach_answer_enhanced(your_message)
  # TODO: return coach answer to your_message
    if your_message == "I am going to work right now!"
      return "#{result} "

    elsif your_message.include?("?")
      return "#{result} Silly question, get dressed and go to work!"

    else
      return "#{result} I don't care, get dressed and go to work!"
    end
end

def coach_answer_enhanced(your_message)
  if your_message == your_message.upcase
    return "I can feel your motivation!"
  else
    return ""
  end
end

end
