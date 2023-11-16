class ChangeCategoryFieldInGardens < ActiveRecord::Migration[7.1]
  def change
    remove_column :gardens, :category, :string
    add_reference :gardens, :category, foreign_key: true
  end
end
