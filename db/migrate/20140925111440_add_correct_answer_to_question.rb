class AddCorrectAnswerToQuestion < ActiveRecord::Migration
  change_table :questions do |t|
    t.references :correct_answer
  end
end
