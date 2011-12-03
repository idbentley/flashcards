class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :media_id

      t.timestamps
    end
		add_foreign_key :answers, :media
  end
end
