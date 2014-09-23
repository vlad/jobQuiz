class CreateQuestionsAndAnswers < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text

      t.timestamps
    end

    create_table :answers do |t|
      t.string :image_url

      t.timestamps
    end

    create_table :answers_questions, id: false do |t|
      t.belongs_to :answer
      t.belongs_to :question
    end
  end
end
