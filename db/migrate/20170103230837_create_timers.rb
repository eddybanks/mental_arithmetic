class CreateTimers < ActiveRecord::Migration[5.0]
  def change
    create_table :timers do |t|
      t.string :name
      t.integer :random_num
      t.float :time_to_err
      t.float :time_overall

      t.timestamps
    end
  end
end
