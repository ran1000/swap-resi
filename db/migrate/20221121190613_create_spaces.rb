class CreateSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :spaces do |t|
      t.string :name
      t.text :description
      t.float :lat
      t.float :lng
      t.integer :daily_cost
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
