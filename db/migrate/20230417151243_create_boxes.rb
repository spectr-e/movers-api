class CreateBoxes < ActiveRecord::Migration[7.0]
  def change
    create_table :boxes do |t|
      t.string :range
      t.integer :cost_to_move_boxes

      t.timestamps
    end
  end
end
