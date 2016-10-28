class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :school
      t.integer :matchId
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
