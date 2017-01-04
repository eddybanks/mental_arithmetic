class AddTrialToTimer < ActiveRecord::Migration[5.0]
  def change
    add_reference :timers, :trial, foreign_key: true
  end
end
