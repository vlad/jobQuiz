class Question < ActiveRecord::Base
  has_and_belongs_to_many :answers

  accepts_nested_attributes_for :answers, allow_destroy: true

  validates :answers, minimum_collection_size: {size: 2}


end
