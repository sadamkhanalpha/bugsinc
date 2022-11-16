class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :name, presence:true
  # validates :password, presence:true
  # validates :usertype, presence:true
  # validates :email, presence:true 
  has_many :user_projects
  has_many :projects, through: :user_projects
  has_many :bugs, :class_name => "Bug", :foreign_key => "creator_id", inverse_of: 'creator'
end
