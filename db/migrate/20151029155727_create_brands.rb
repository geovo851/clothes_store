class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :title
      t.text :description
      t.string :gender

      t.timestamps null: false
    end
  end
end
