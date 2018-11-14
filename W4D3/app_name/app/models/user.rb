# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :username, presence: true
  validates :password_digest, presence: { message: 'Password can\'t be blank' }
  validates :password, length: { minimum: 6, allow_nil: true }
  validates :session_token, presence: true
  after_initialize :ensure_session_token

  def self.find_by_credentials(username, password)
    @user = User.find_by(username: username)
    return nil if user.nil?
    if @user.is_password?(password)
      return @user
    else
      return nil
    end
  end

  def self.generate_session_token
    @session_token = SecureRandom.base64(16)
  end

  def reset_session_token
    @session_token = self.class.generate_session_token
    self.save
  end

  def ensure_session_token
    if @session_token.nil?
      self.class.generate_session_token
    end
    @session_token
  end

  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end
end
