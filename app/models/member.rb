# -*- encoding : utf-8 -*-
class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :address, :city, :postcode, :email, :password, :password_confirmation, :remember_me

  validates :name, :address, :city, :presence => true
  validates :postcode, :presence => true, :numericality => true

end
