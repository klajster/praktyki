#coding: UTF-8

class Comment < ActiveRecord::Base
  belongs_to :statement

  validate :title, presence: true

end