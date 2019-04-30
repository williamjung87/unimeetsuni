class CreatePasswordMssgs < ActiveRecord::Migration[5.2]
  def change
    create_table :password_mssgs do |t|

      t.timestamps
    end
  end
end
