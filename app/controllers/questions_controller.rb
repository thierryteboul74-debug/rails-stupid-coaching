
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    # On applique la logique du coach
    @answer = if @question == "I am going to work right now!" || @question == "I AM GOING TO WORK RIGHT NOW!"
                ""
              elsif @question.include?("?")
                "Silly question, get dressed and go to work!"
              else
                "I don't care, get dressed and go to work!"
              end

    # Si la phrase est entièrement en majuscules
    if @question == @question.upcase && @question.present?
      @answer = "I can feel your motivation! #{@answer}"
    end

    puts "QUESTION : #{@question.inspect}"
    puts "ANSWER : #{@answer.inspect}"
  end
end
