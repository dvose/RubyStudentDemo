class Student < ActiveRecord::Base
  has_many :courses
  validates :name, presence: true, length: { minimum: 5}
  validates :major, presence: true, length: { minimum: 2}
  validates :year, presence: true, length: { minimum: 6}
  validates :gpa, presence: true, :numericality => { :greater_than => 0, :less_than_or_equal_to => 4}
end
