class AddAuthorIdToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :author_id, :integer
    add_index :categories, :author_id
  end
end
