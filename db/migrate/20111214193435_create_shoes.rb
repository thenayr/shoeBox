class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :zapposkey
      t.string :term

      t.timestamps
    end
  end
end
