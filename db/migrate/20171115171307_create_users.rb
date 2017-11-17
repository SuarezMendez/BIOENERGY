class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      
      t.string  :name
      t.string  :email
      t.integer :document
      t.integer :step
      t.integer :boss

      t.references :departament, foreign_key: true
      t.references :role, foreign_key: true
      t.references :charge, foreign_key: true
      t.references :area, foreign_key: true

      t.string  :password_hash
      t.string  :password_salt

      t.timestamps
    end
  end
end
