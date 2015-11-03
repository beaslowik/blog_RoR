class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :email
      t.text :text

      t.timestamps null: false
    end
  end
end
