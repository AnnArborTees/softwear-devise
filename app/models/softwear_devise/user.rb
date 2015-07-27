module SoftwearDevise
  class User < ActiveRecord::Base
    include ProfilePicture if defined?(Asset)

    attr_encrypted :freshdesk_password, key: 'h4rdc0ded1337ness'

    devise :database_authenticatable, :confirmable, :timeoutable,
           :recoverable, :rememberable, :trackable, :validatable


  end
end
