class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :forhowmany
      t.integer :cookingtime
      t.string :budget
      t.string :category
      t.string :url

      t.timestamps
    end
  end
end
