# ================================================
# MODEL ==========================================
# ================================================
class Tweet < ActiveRecord::Base
  belongs_to :user
  attr_accessible :message

  validates :user, presence: true

  # Static Method:
  #   Tweet.search_via_message
  def self.search_via_message(message)
    Tweet.where(:message => message)
  end
  
  # Normal Method:
  #   tweet = ....
  #   tweet.convert_to_whatever
  def convert_to_whatever()
    self.message = "Whatever"
    self.save
  end
end
