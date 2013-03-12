class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :first_name, :last_name, :middle_initial, :gender, :date_of_birth
  validates :first_name, :presence => true, :format => { :with => /\A[A-Za-z\W\'\-\.]+\Z/ }
  validates :last_name,  :presence => true, :format => { :with => /\A[A-Za-z\W\'\-\.]+\Z/ }
  validates_email_format_of :email
  validates :email, :presence => true, :uniqueness => { :case_sensitive => false }
  validates :middle_initial, :length => { :maximum => 1 }
  validates :gender, :inclusion => { :in => %w(male female),
    :message => "%{value} can only be male or female" }, :allow_nil => true
end
