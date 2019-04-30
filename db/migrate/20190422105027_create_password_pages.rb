class CreatePasswordPages < ActiveRecord::Migration[5.2]
  def change
    create_table :password_pages do |t|

      t.timestamps
    end
  end
end
