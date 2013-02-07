# -*- encoding : utf-8 -*-
require 'digest/sha1'
class User < ActiveRecord::Base
  attr_accessible :name, :password, :email
  has_many :todos
  before_save :encrypt_password

  def encrypt_password
    if password.present?
      self.password = Digest::SHA1.hexdigest(self.password)
    else
      self.password = self.password_was
    end
  end

  def registered?
    u = User.where("email" => self.email).first
    if u
      if Digest::SHA1.hexdigest(self.password) == u.password
        self.id = u.id
        return true
      else
        return false
      end
      return true
    else
      return false
    end

  end
end