class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.belongs_to :user, foreign_key: true
      t.string :name
      t.string :picture
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
