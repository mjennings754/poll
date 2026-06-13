class CreatePollOptions < ActiveRecord::Migration[8.1]
  def change
    create_table :poll_options do |t|
      t.string :title
      t.references :osrspoll, null: false, foreign_key: true

      t.timestamps
    end
  end
end
