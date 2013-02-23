class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :middle_initial, :email, :picture, :gender, :date_of_birth, :city, :state
  validates :first_name, :presence => true, :format => { :with => /\A[A-Za-z\W\'\-\.]+\Z/ }
  validates :last_name,  :presence => true, :format => { :with => /\A[A-Za-z\W\'\-\.]+\Z/ }
  validates_email_format_of :email
  validates :email, :presence => true, :uniqueness => {:case_sensitive => false}
  validates :middle_initial, :length => { :maximum => 1 }
  validates :gender, :inclusion => { :in => %w(male female),
    :message => "%{value} can only be male or female" }, :allow_nil => true
end
