class CreateCreatMeetings < ActiveRecord::Migration[5.2]
	def change
   # create_table :creat_meetings do |t|

   create_table :meetings do |t|

   	t.integer :user_id

   	t.string :date
   	t.string :time
   	t.string :size
   	t.string :purpose
   	t.string :place

   	t.timestamps
   end
end
end
