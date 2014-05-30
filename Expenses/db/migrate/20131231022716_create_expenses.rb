class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :details
      t.int :amount
      t.date :dated

      t.timestamps
    end
  end
end
