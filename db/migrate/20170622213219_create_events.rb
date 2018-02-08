class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.date :date
      t.string :location
      t.text :description
      t.integer :host_id

      t.timestamps
    end
    add_index :events, :host_id
  end
end
