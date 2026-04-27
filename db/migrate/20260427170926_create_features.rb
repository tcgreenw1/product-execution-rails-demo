class CreateFeatures < ActiveRecord::Migration[8.1]
  def change
    create_table :features do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.string :status

      t.timestamps
    end
  end
end
