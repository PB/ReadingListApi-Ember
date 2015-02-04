class Book < ActiveRecord::Base
  scope :finished, -> { where.not(finished_at: nil) }
end
