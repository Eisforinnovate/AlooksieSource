class Message < ActiveRecord::Base
  attr_accessible :content
  attr_accessor :name, :priority

  belongs_to :user
  has_many :notifications
  has_many :messagematchs
  has_many :messagehashtags
  validates :user_id, :content, presence: true
  validates :content, :length => { minimum: 1, maximum: 200 }
  default_scope order: 'messages.created_at DESC'  #defaults to displaying recent first

  acts_as_taggable
  acts_as_taggable_on :locations, :genders, :others
end
