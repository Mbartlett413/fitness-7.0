class CreateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :trainings do |t|
      t.string :coach_notes
      t.string :client_notes
      t.integer :exercise_id
      t.integer :volume_id
      t.references :day, foreign_key: true

      t.timestamps
    end
  end
end
