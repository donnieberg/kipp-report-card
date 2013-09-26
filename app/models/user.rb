class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :avatar


  has_attached_file :avatar, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }

end
