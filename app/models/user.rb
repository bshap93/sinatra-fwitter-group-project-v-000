class User < ActiveRecord::Base
  has_many :tweets
  has_secure_password
  
  def slug
    self.username.downcase.split(" ").join("-")
  end

  def self.find_by_slug(slug)
    self.all.find{|item| item.slug == slug}
  end
end