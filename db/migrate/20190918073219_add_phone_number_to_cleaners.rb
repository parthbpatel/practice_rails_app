class AddPhoneNumberToCleaners < ActiveRecord::Migration[6.0]
  def change
    add_column :cleaners, :phone_number, :string
  end
end
