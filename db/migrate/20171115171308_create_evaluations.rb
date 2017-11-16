class CreateEvaluations < ActiveRecord::Migration[5.1]
  def change
    create_table :evaluations do |t|

      t.string      :comment
      t.boolean     :approved
      t.references  :user, foreign_key: true

      t.timestamps
    end
  end
end
