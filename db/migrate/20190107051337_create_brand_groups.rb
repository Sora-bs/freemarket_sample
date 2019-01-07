class CreateBrandGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :brand_groups do |t|
      t.string :name, null: false, unique: true
      t.timestamps
    end
  end
end
