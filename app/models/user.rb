class User < ActiveRecord::Base
  has_many :quizzes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  include AASM

  aasm do # default column: aasm_state
    state :rejection
    state :quiz, :initial => true
    state :phone_interview
    state :local_interview
    state :active
    state :inactive
  end

  def stage
    aasm_state
  end

  def most_recent_quiz
    self.quizzes.where("created_at >= ?", 60.days.ago.utc).order("created_at desc").first
  end
end
