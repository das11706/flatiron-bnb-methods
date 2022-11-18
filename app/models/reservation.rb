class Reservation < ActiveRecord::Base
  validates :checkin, presence: true
  validates :checkout, presence: true

  belongs_to :listing
  belongs_to :guest, :class_name => "User"
  has_one :review

end
