class CreateDays < ActiveRecord::Migration[7.0]
  def change
    create_table :days do |t|
      t.string :title
      t.boolean :active, default: true
      t.references :week, null: false, foreign_key: true

      t.timestamps
    end
  end
end
