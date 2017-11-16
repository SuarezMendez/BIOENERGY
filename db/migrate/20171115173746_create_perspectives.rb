class CreatePerspectives < ActiveRecord::Migration[5.1]
  def change
    create_table :perspectives do |t|
      t.string :name

      t.timestamps
    end
  end
end
