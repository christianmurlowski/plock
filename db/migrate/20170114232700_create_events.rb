class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :title
      t.string :descirption
      t.integer :user_id
      t.integer :good_vote
      t.integer :bad_vote

      t.timestamps
    end
  end
end
