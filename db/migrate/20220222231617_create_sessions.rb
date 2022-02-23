class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.integer :shift
      t.datetime :start_time
      t.datetime :finish_time
      t.references :track, null: true, foreign_key: true

      t.timestamps
    end
  end
end
