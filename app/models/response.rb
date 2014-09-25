class Response < ActiveRecord::Base
  belongs_to :quiz
  references :question
  references :answer
end
