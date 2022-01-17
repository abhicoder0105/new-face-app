class AddCategoryToBlogs < ActiveRecord::Migration[6.1]
  def change
        add_column :blogs, :category, :string
        add_column :blogs, :sub_category, :string

  end
end
