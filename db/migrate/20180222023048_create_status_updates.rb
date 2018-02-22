class CreateStatusUpdates < ActiveRecord::Migration[5.1]
  def change
    create_table :status_updates do |t|
      t.belongs_to :user, foreign_key: true
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
