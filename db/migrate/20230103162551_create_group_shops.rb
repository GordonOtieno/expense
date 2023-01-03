class CreateGroupShops < ActiveRecord::Migration[7.0]
  def change
    create_table :group_shops do |t|
      t.references :group, null: false, foreign_key: true
      t.references :shop, null: false, foreign_key: true
      t.timestamps
    end
  end
end
