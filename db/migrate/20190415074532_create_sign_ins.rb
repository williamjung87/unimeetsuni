class CreateSignIns < ActiveRecord::Migration[5.2]
  def change
    create_table :sign_ins do |t|

      t.timestamps
    end
  end
end
