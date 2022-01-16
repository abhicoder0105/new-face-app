class BlogAttachments < ActiveRecord::Migration[6.1]
  def change
     create_table :blog_attachments do |t|
      t.string :attachment
      t.references :blog, index: true

      
      t.timestamps
  end 
  end 


end
