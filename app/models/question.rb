class Question < ActiveRecord::Base
  has_and_belongs_to_many :answers
  accepts_nested_attributes_for :answers, :allow_destroy => true
end
