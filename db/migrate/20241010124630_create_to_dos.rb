class CreateToDos < ActiveRecord::Migration[7.2]
  def change
    create_table :to_dos do |t|
      t.string :title
      t.text :description
      t.boolean :completed
      t.references :user, null: false, foreign_key: true
      t.integer :points

      t.timestamps
    end
  end
end
