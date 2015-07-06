# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable, 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  ROLES = {0 => :guest, 1 => :user, 2 => :moderator, 3 => :admin}
  attr_reader :role
  
  def initialize(role_id = 0)
    @role = ROLES.has_key?(role_id.to_i)? ROLES[role_id.to_i] : ROLES[0]
    
  end
  
  def role?(role_name)
    role == role_name
    
  end
         
  acts_as_messageable
  
  def mailboxer_email(object)
    email 
  end
  
end
