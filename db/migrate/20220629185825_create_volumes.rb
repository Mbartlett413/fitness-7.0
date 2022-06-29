class CreateVolumes < ActiveRecord::Migration[7.0]
  def change
    create_table :volumes do |t|
      t.boolean :free_text, default: false
      t.text :volume_text
      t.integer :weight
      t.integer :reps
      t.integer :percentage
      t.integer :superset_id
      t.boolean :amrap, default: false

      t.timestamps
    end
  end
end
