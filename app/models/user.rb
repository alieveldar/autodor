# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  password_digest :string
#  role            :string
#  managestations  :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  login           :string
#

class User < ActiveRecord::Base
	 	has_secure_password
    validates :password_digest, confirmation: true
    validates :password_confirmation, presence: true
	def master?
  		self.role == 'master'
	end

  	def admin?
    	self.role == 'admin'
  	end
  	  	def manager?
  	  	self.role == 'manager'
  	end 
end

