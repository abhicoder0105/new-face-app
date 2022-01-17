class CreateSubCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :sub_categories do |t|
      t.string :sub_category
       t.references :category, index: true
      t.timestamps
    end
  end
end
