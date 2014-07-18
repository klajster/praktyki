#coding: UTF-8

class Statement <ActiveRecord::Base

	validates :author, presence: true

	has_many :comments

end

