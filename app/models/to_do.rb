class ToDo < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  before_create :set_default_points

  def set_default_points
    self.points ||= 0
  end
end
