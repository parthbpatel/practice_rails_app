class Cities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      t.string :city

      t.timestamps
    end
  end
end
