# == Schema Information
#
# Table name: responses
#
#  id        :bigint(8)        not null, primary key
#  user_id   :integer          not null
#  answer_id :integer          not null
#

class Response < ApplicationRecord
  validates :user_id, :answer_id, presence: true
  # validate :cannot_respond_to_question_twice

  belongs_to :answer_choice,
  primary_key: :id,
  foreign_key: :answer_id,
  class_name: :AnswerChoice

  has_one :respondent,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User

  has_one :question,
  through: :answer_choice,
  source: :question

  has_many :sibling_responses,
  through: :question,
  source: :responses

  def not_self_siblings
    # self.sibling_responses.where.not(id: self.id )
    self.question.responses.where.not(id: self.id)
  end

  def cannot_respond_to_question_twice
    if self.not_self_siblings.select(:user_id).include?(self.user_id)
      #error???
      error[:multiple_response] << "can't respond to a question more than once"
    end
  end
end
