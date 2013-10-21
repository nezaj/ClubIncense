require 'valid_email'

class Signup < ActiveRecord::Base
  attr_accessible :email
  validates :email, :email => { :message => "Please use a valid email address" }
  validates :email, :uniqueness => { :message => "Email is already in use" }
end
