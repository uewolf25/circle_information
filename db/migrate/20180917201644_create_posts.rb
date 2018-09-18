class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :manager
      t.string :sports_kinds
      t.string :dates
      t.string :area
      t.text :explain

      t.timestamps
    end
  end
end
