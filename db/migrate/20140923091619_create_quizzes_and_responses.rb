class CreateQuizzesAndResponses < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|
      t.belongs_to :user,       index: true
      t.integer    :seconds_limit
      t.timestamps
    end

    create_table :responses do |t|
      t.belongs_to :quiz,       index: true
      t.references :question,   index: true
      t.references :answer,     index: true, default: nil

      #record if the response was correct or not, in case we delete question later
      t.boolean    :correct,    default: false

      t.timestamps
    end
  end
end
