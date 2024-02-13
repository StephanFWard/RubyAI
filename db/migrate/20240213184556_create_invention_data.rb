# db/migrate/[timestamp]_create_invention_data.rb

class CreateInventionData < ActiveRecord::Migration[7.1]
  def change
    create_table :invention_data do |t|
      t.string :name
      t.text :description
      # Add more columns as needed
      t.timestamps
    end
  end
end