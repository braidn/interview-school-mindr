class CreateClassrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :classrooms do |t|
      t.string :room_number, null: false
      t.references :building, foreign_key: true
      t.string :floor

      t.timestamps
    end
  end
end
