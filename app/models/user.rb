# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  is_admin        :boolean
#  is_encoder      :boolean
#  is_batcher      :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  remember_token  :string(255)
#



class User < ActiveRecord::Base
  include SentientUser
  track_who_does_it
 attr_accessible :email, :is_admin, :is_encoder, :is_batcher, :name, :password, :password_confirmation
 has_secure_password
 #before_validation { |user| user.email = email.downcase }
 before_save :create_remember_token

 validates :name, presence: true, length: { maximum: 50 }
 #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 #validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: true
 validates :password, presence: true, length: { minimum: 5 }, :on => :create
 validates :password_confirmation, presence: true, :on => :create


 
   
  private
   
  def create_remember_token
    if self.remember_token.nil?
      self.remember_token = SecureRandom.urlsafe_base64
    end
  end

end
