class CreateBloodGlucoses < ActiveRecord::Migration[5.2]
  def change
    create_table :blood_glucoses do |t|
      t.integer :glucoselevel
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
