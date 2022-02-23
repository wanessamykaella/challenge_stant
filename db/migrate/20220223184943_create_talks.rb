class CreateTalks < ActiveRecord::Migration[6.1]
  def change
    create_table :talks do |t|
      t.string :name
      t.integer :duration, default: 5
      t.references :session, null: true, foreign_key: true

      t.timestamps
    end
  end
end