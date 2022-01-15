class User < ApplicationRecord
  before_save :downcase_name_email
  has_secure_password
  validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 15 }

  EMAIL_REGEX = /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/i

  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: EMAIL_REGEX, multiline: true }

  private

  def downcase_name_email
    self.username = username.downcase
    self.email = email.downcase
  end
end
