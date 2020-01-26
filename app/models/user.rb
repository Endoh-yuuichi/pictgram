class User < ApplicationRecord
<<<<<<< HEAD
  validates :name, presence: true, length: { maximum: 15}
  
  VALID_EMAIL_REGEX = /[^\s]@[^\s]/
  validates :email, presence: true, format: {with: VALID_EMAIL_REGEX}
  
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,100}+\z/i
  validates :password, presence: true, length: { minimum:8, maximum: 32},
  format: {with: VALID_PASSWORD_REGEX}

  



  has_secure_password
  
  has_many :topics
  has_many :favorites
  has_many :favorite_topics, through: :favorites, source: 'topic'
  
  has_many :comments
  
end
=======
  validates :name, presence: true
  validates :email, presence: true,format: { with: /[A-Za-z0-9._+]+@[A-Za-z]+.[A-Za-z]/ }
  validates :name, length: { maximum: 15 }
  validates :password, presence: true, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i }
  
  has_secure_password

  has_many :topics
end
>>>>>>> origin/master
