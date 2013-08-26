class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation, :school_id, :type, :grade_level
  has_many :ratings, foreign_key: "rater_id"

  before_save { self.email = email.downcase }
  before_create :create_remember_token

  validates :name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, presence: true


  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end


  private
      #before_create user, call this method. It's private cuz we only use it in the class' methods.
      def create_remember_token
        self.remember_token = User.encrypt(User.new_remember_token)
      end

end
