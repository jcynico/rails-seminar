class User < ActiveRecord::Base
  validates_presence_of :name, :password
  validates_length_of :password, minimum: 4, maximum: 10
  validate :must_not_be_2_name

  after_create :set_age
  
  def must_not_be_2_name
    errors.add(:base, "only me!!!") if self.name.length == 2
  end

  def set_age
    self.age = 20
    self.save
  end
end
