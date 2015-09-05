class CreateDebts < ActiveRecord::Migration
  def change
    create_table :debts do |t|
      t.string :category, null: false
      t.string :sub_category, null: false
      t.string :name, null: false
      t.integer :due_day, null: false, default: 0

      t.timestamps null: false
    end

    add_index :debts, [:category, :name], unique: true, name: "by_category_name"
  end
end