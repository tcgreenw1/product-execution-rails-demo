class CreateStories < ActiveRecord::Migration[8.1]
  def change
    create_table :stories do |t|
      t.string :title
      t.text :description
      t.text :acceptance_criteria
      t.references :feature, null: false, foreign_key: true

      t.timestamps
    end
  end
end
