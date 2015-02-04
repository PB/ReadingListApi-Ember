class Book < ActiveRecord::Base

  belongs_to :genre

  scope :finished, -> { where.not(finished_at: nil) }

  validates :title, presence: true
end
