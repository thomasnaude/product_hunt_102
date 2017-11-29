class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def full_name
    "#{first_name_capitalized} #{last_name_capitalized}"
  end

  def first_name_capitalized
    first_name.capitalize
  end

  def last_name_capitalized
    last_name.capitalize
  end
end
