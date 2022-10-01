class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer :number
      t.string :name
      t.float :amount
      t.boolean :is_active
      t.string :user_full_name

      t.timestamps
    end
  end
end
