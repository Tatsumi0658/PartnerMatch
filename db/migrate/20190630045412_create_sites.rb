class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :name
      t.text :description
      t.string :category
      t.text :keyword
      t.references :partner

      t.timestamps
    end
  end
end
