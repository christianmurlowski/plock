class CreateParticipations < ActiveRecord::Migration[5.0]
  def change
    create_table :participations do |t|

      t.timestamps
    end
  end
end
