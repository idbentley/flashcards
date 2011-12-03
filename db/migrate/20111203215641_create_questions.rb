class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.integer :media_id
			t.integer :answer_id

      t.timestamps
    end
		add_foreign_key :questions, :media
		add_foreign_key :questions, :answers
  end
end
