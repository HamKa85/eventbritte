class Event < ApplicationRecord
  belongs_to :host, class_name: 'User'
  has_many :invitations, foreign_key: :attended_event_id
  has_many :guests, through: :invitations, source: :guest

  scope :past, (-> { where('date < ?', Date.today) })
  scope :upcoming, (-> { where('date >= ?', Date.today) })
end
