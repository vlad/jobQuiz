class Question < ActiveRecord::Base
  has_and_belongs_to_many :answers

  accepts_nested_attributes_for :answers, allow_destroy: true

  validates :answers, minimum_collection_size: {size: 2}

  def self.import_from_json(json)
    json.each do |question_text, answer_image_urls|
      q = Question.new(text: question_text)
      answer_image_urls.each do |image_url|
        q.answers.build(image_url: image_url)
      end
      q.save
      q.correct_answer_id = q.answers.first.id
      q.save
    end

  end
end
