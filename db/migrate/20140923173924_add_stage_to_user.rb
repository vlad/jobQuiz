class AddStageToUser < ActiveRecord::Migration
  def change
    add_column :users, :aasm_state, :string, null: false
  end
end
