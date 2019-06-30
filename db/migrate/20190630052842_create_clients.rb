class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :company, null: false
      t.string :email, null: false
      t.string :password_digest

      t.timestamps
    end
  end
end
