class CreateMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :meetings do |t|

      t.integer :user_id
      t.string :datetime
      t.string :size
      t.string :purpose
      t.string :place
      t.timestamps
    end
  end
end
