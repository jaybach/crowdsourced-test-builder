class QuestionTag < ActiveRecord::Base

  belongs_to :question
  belongs_to :tag
  validates :question_id, uniqueness: {scope: :tag_id}


  validates :question_id, uniqueness: {scope: :tag_id}

end
