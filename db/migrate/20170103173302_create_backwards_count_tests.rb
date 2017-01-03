class CreateBackwardsCountTests < ActiveRecord::Migration[5.0]
  def change
    create_table :backwards_count_tests do |t|
      t.integer :accuracy_rating

      t.timestamps
    end
  end
end
