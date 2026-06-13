class CreateOsrspolls < ActiveRecord::Migration[8.1]
  def change
    create_table :osrspolls do |t|
      t.string :question

      t.timestamps
    end
  end
end
