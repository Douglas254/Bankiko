class CreateDefaulters < ActiveRecord::Migration[7.0]
  def change
    create_table :defaulters do |t|
      t.string :name
      t.float :amount

      t.timestamps
    end
  end
end
