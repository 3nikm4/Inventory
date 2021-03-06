class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :group_id
      t.string :username
      t.string :password
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :active

      t.timestamps
    end
  end
end
