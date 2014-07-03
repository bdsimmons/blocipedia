class CreateWikis < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.string :name
      t.text :body
      t.boolean :private, default: false
      t.references :user, index: true

      t.timestamps
    end
  end
end