class ChangeRatingRelationships < ActiveRecord::Migration[7.0]
  def change
    remove_column :rating, :booking_id
    add_reference :ratings, :user, null: false, foreign_key: true
    add_reference :ratings, :mover, null: false, foreign_key: true
  end
end
