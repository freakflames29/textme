class Message < ApplicationRecord
  belongs_to :user
  validates :msg, presence: true
  scope :custom_display, -> { order(:created_at).last(20) }
end
