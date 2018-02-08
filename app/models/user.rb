class User < ApplicationRecord
  has_many :events, foreign_key: 'host_id', class_name: 'Event'
  has_many :invitations, foreign_key: :guest_id
  has_many :attended_events, through: :invitations, source: :attended_event

  def upcoming_events
    attended_events.where('date >= ?', Date.today)
  end

  def past_events
    attended_events.where('date < ?', Date.today)
  end
end
