class Book < ActiveRecord::Base

  belongs_to :genre

  scope :finished, -> { where.not(finished_at: nil) }
  scope :available, -> { where(archived_at: nil) }

  validates :title, presence: true
  def archive
    self.archived_at = Time.now
    self.save
  end
end
