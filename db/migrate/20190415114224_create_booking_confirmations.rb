class CreateBookingConfirmations < ActiveRecord::Migration[5.2]
  def change
    create_table :booking_confirmations do |t|

      t.timestamps
    end
  end
end
