class Url < ActiveRecord::Base
  attr_accessible :original_url

  before_create :shorten_my_link
  
  def shorten_my_link  
    self.shortened_url = rand(10000).to_s
  end
end
