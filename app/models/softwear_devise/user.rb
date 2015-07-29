module SoftwearDevise
  class User < ActiveRecord::Base
    include ProfilePicture if defined?(Asset)

    acts_as_token_authenticatable

    attr_encrypted :freshdesk_password, key: 'h4rdc0ded1337ness'

    devise :database_authenticatable, :confirmable, :timeoutable,
           :recoverable, :rememberable, :trackable, :validatable

    validates :email, email: true
    validates :first_name, presence: true
    validates :last_name, presence: true

    def full_name
      "#{first_name} #{last_name}"
    end

  end
end
