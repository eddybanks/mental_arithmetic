class AddTestToTrial < ActiveRecord::Migration[5.0]
  def change
    add_reference :trials, :test, foreign_key: true
  end
end
