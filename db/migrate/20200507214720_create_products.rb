class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :label
      t.string :details
      t.integer :installation_priority

      t.timestamps
    end
  end
end
