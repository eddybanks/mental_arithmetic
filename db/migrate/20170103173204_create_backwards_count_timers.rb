class CreateBackwardsCountTimers < ActiveRecord::Migration[5.0]
  def change
    create_table :backwards_count_timers do |t|
      t.integer :random_num
      t.integer :time_to_err
      t.integer :time_overall

      t.timestamps
    end
  end
end
