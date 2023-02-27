class Answer < ApplicationRecord
  validates_presence_of :response

  def self.random_answer
    order(Arel.sql('RANDOM()')).first
  end
end
