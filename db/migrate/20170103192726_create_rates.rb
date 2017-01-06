class CreateRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rates do |t|
      t.string :loan_type
      t.string :length
      t.string :rate
      t.string :apr
      t.string :description
      t.timestamps
    end
  end
end
