class Response < ActiveRecord::Base
  belongs_to :quiz
  belongs_to :question
  belongs_to :answer
end
