#coding: UTF-8

class Statement <ActiveRecord::Base

	validates :author, presence: true

	scope :old, ->{where("age>15")}

	has_many :comments
end
