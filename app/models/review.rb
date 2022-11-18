class Review < ActiveRecord::Base
  validates :rating, presence: true
  validates :description, presence: true
  validates_associated :reservation 


  # && validates :status, acceptance: true && validates :checkout, presence: true 



  # class Computer < ApplicationRecord
  #   validates :mouse, presence: true,
  #                     if: [Proc.new { |c| c.market.retail? }, :desktop?],
  #                     unless: Proc.new { |c| c.trackpad.present? }
  # end

  # with_options if: :is_admin? do |admin|
  #   admin.validates_associated :reservation
  #   admin.validates :status, acceptance: true
  #   admin.validates :checkout, presence: true
  # end
  

  belongs_to :reservation
  belongs_to :guest, :class_name => "User"

end


  

# class User < ApplicationRecord
#   with_options if: :is_admin? do |admin|
#     admin.validates :password, length: { minimum: 10 }
#     admin.validates :email, presence: true
#   end
# end