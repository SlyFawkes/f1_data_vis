class CreateDrivers < ActiveRecord::Migration[7.0]
  def change
    create_table :drivers, :id => false do |t|
      t.integer :id, null: false, index: {unique: true}
      t.string :ref
      t.integer :number
      t.string :code
      t.string :forename
      t.string :surname
      t.date :dob
      t.string :nationality
      t.string :url

      t.timestamps
    end
  end
end
