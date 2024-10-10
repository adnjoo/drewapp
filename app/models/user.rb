class User < ApplicationRecord
  has_many :articles, dependent: :destroy
  has_many :to_dos, dependent: :destroy

  def total_points
    todos.where(completed: true).sum(:points)
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
