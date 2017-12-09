# == Schema Information
#
# Table name: users
#
#  id             :integer          not null, primary key
#  name           :string
#  email          :string
#  document       :integer
#  step           :integer
#  boss           :integer
#  departament_id :integer
#  role_id        :integer
#  charge_id      :integer
#  area_id        :integer
#  password_hash  :string
#  password_salt  :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class User < ApplicationRecord

  attr_accessor :password
  before_save :encrypt_password

  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :document
  validates_uniqueness_of :email, :document

  belongs_to  :departament
  belongs_to  :role
  belongs_to  :charge
  belongs_to  :area
  has_one     :evaluation

  def get_bosses
    User.where(departament: self.departament)
  end

  def get_employees
    User.where(boss: self.id)
  end

  def get_employees_step(step)
    User.where(boss: self.id, step: step)
  end

  def get_goals_type(type)
    self.evaluation.goals.where(perspective_id: type)
  end

  def update_step
    self.update(step: self.step+1)
  end

  def self.authenticate(document, password)
    user = find_by_document(document)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

end
