class QuestionsController < ApplicationController
 def ask
 end

 def answer
   @questions = params[:question]
   @answer = coach_answer(@questions)
 end

def coach_answer(your_message)
   exit_phrase = "I am going to work right now!"
   if your_message != exit_phrase
     if your_message.include?("?") # fini avec un “?”
       @response = "Silly question, get dressed and go to work!"
     else
      @response = "I don’t care, get dressed and go to work!"
     end
   else
     return "Great!"
   end
 end

end
