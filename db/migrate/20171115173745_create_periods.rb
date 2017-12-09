class CreatePeriods < ActiveRecord::Migration[5.1]
  def change
    create_table :periods do |t|

      t.integer     :number
      t.date        :expiration
      t.integer     :proposed
      t.integer     :reached
      t.string      :compromise
      t.string      :commentary
      t.boolean     :approved
      t.references  :goal, foreign_key: true

      t.timestamps
    end
  end
end
