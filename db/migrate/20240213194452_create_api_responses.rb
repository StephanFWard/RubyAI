class CreateApiResponses < ActiveRecord::Migration[7.1]
  def change
    create_table :api_responses do |t|
      t.text :response_body

      t.timestamps
    end
  end
end
