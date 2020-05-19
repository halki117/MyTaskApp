class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.string      :title, null: false
      t.text        :memo , limit: 1000
      t.references  :list, foreign_key: true
      t.timestamps
    end
  end
end
