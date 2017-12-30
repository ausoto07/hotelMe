#app/models/hotel.rb
class Hotel < ApplicationRecord
  has_many :rooms
  # require name, location
  validates :name, presence: true
  # def self.welcome_message
  # "Welcome to our Hotel!"
  # end
  #
  # def room_service
  #   "This is room service, how may I help you?"
  # end
  def to_s
    return self.name.split.map(&:capitalize)*' '
  end
end
