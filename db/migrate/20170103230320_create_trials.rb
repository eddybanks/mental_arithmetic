class CreateTrials < ActiveRecord::Migration[5.0]
  def change
    create_table :trials do |t|
      t.string :name
      t.integer :accuracy_rating

      t.timestamps
    end
  end
end
