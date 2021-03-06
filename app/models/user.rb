class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [:director, :projectmanager, :engineer]
  validates_format_of :email, with: /\@galtgeo\.com.au/, message: 'You must have a valid galt email address'
  validates :firstname, :presence => true
  validates :surname, :presence => true
end
