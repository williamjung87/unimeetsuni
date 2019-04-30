class CreateSignUpPages < ActiveRecord::Migration[5.2]
  def change
    create_table :sign_up_pages do |t|

      t.timestamps
    end
  end
end
