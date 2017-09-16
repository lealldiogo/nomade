class CreateRides < ActiveRecord::Migration[5.0]
  def change
    create_table :rides do |t|
      t.belongs_to :user, foreign_key: true
      t.string :from
      t.string :to

      t.timestamps
    end
  end
end
