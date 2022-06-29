class CreatePrograms < ActiveRecord::Migration[7.0]
  def change
    create_table :programs do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :program_type, default: 0
      t.integer :cost, default: 0
      t.string :title
      t.integer :days_per_week
      t.integer :num_weeks
      t.boolean :blueprint, default: false

      t.timestamps
    end
  end
end
