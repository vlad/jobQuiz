class User < ActiveRecord::Base
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
end
