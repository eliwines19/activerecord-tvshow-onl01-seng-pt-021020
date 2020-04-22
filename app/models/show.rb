class Show < ActiveRecord::Base

  def self.highest_rating #return highest value in the ratings column, use 'maximum'
    Show.maximum[:rating]
  end

  def self.most_popular_show #returns the show with the highest rating
    Show.where("rating = ?", self.highest_rating).first
  end

  def self.lowest_rating #returns the lowest value in the ratings column
    Show.minimun[:rating]
  end

  def self.least_popular_show #returns the show with the lowest rating
    Show.where("rating = ?", self.lowest_rating).first
  end

  def self.ratings_sum #returns the sum of all the ratings
    Show.sum[:rating]
  end

  def self.popular_shows #returns an array of all the shows that have a rating higher than 5, use 'where'
    Show.where("rating > ?", 5)
  end

  def self.shows_by_alphabetical_order #returns an array of all the shows in alphabetical order according to names, use 'order'
    Show.all.order(name: :asc)
  end
  
end
