class Ticket < ApplicationRecord
  belongs_to :victim, class_name: 'User'
  belongs_to :worker, class_name: 'User', optional: true
  has_one :chatroom

  enum status: [:pending, :solved]
  def self.styles
    ["I'm in danger, I need help!", "I want to use hidden live chat", "I want to speak to specialist via video chat"]
  end
end
