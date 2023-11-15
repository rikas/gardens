class CreateGardens < ActiveRecord::Migration[7.1]
  def change
    create_table :gardens do |t|
      t.string :banner_url, null: false
      t.string :name, null: false
      t.string :category, null: false

      t.timestamps
    end
  end
end
