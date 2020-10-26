class Ticket < ApplicationRecord
  belongs_to :victim, class_name: 'User'
  belongs_to :worker, class_name: 'User'
  has_one :chatroom
end
