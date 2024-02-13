# db/migrate/YYYYMMDDHHMMSS_create_invention_datas.rb
class CreateInventionDatas < ActiveRecord::Migration[7.1]
    def change
      create_table :invention_datas do |t|
        t.text :data
  
        t.timestamps
      end
    end
  end