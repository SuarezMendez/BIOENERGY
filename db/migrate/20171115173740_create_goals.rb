class CreateGoals < ActiveRecord::Migration[5.1]
  def change
    create_table :goals do |t|

      t.string      :description
      t.integer     :indicator
      t.string      :formula
      t.integer     :weight
      t.integer     :num_periods
      t.references  :evaluation, foreign_key: true
      t.references  :perspective, foreign_key: true
      t.references  :measure, foreign_key: true


      t.timestamps
    end
  end
end
