class AddColumnToParticipation < ActiveRecord::Migration[5.0]
  def change
    add_column :participations, :event_id, :integer
    add_column :participations, :user_id, :integer
  end
end
