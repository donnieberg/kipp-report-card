class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :password,
                  :password_confirmation, :school_id, :type, :grade_level, :person_id, :avatar

  belongs_to :school
  has_many :ratings, foreign_key: "rater_id"


  before_save { self.email = email.downcase }
  before_create :create_remember_token

  validates :first_name, :last_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }
  validates :password_confirmation, :school_id, :grade_level, :person_id, presence: true

  has_secure_password

  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

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
