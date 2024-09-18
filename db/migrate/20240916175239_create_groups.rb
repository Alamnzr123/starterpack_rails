class CreateGroups < ActiveRecord::Migration[7.2]
    def change
      create_table :groups do |t|
        t.string :name
        t.string :icon, :default => "https://cdn-icons-png.flaticon.com/512/2202/2202112.png"
        t.datetime "created_at", null: false
      end
    end
  end