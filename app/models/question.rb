class Question < ActiveRecord::Base

  belongs_to :user
  belongs_to :test
  has_many :question_tags
  has_many :tags, through: :question_tags
  has_many :ratings

  validates :content, length: { minimum: 5, maximum: 200 }

  def average_rating
    self.ratings.average(:value)
  end

  def ratings_count
    self.ratings.count
  end

end
