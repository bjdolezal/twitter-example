class Tweet < ActiveRecord::Base
  belongs_to :user
  attr_accessible :message

  validates :user, presence: true
end
