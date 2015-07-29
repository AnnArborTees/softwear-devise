module SoftwearDevise
  class ApplicationController < ActionController::Base
    acts_as_token_authentication_handler_for User
  end
end
