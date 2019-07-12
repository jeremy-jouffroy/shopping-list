class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :list_name
      t.references :user

      t.timestamps
    end
  end
end
