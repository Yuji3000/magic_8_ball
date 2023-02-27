class MagicEightController < ApplicationController
  def home

  end

  def answer
    @answer = Answer.random_answer 
  end
end
