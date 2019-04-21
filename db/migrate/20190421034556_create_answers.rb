class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :answer_str
      t.integer :user_id
      t.integer :plant_id
      t.integer :question_id
      t.timestamps
    end
  end
end
