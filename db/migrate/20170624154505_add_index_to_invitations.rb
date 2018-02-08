class AddIndexToInvitations < ActiveRecord::Migration[5.1]
  def change
    add_index :invitations, :guest_id
    add_index :invitations, :attended_event_id
  end
end
