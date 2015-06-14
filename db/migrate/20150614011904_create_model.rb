class CreateTemps < ActiveRecord::Migration
 def up
  create_table :temps do |t|
   t.string :device_id
   t.integer :probe_num
   t.integer :temperature

   t.timestamps null: false
  end
 end

 def down
  drop_table :temps
 end


#  def change
#  end
end
