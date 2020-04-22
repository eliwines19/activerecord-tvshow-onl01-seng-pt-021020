class Show < ActiveRecord::Base

  def highest_rating #return highest value in the ratings column, use 'maximum'
    Show.maximum[:rating]
  end

  def most_popular_show #returns the show with the highest rating
    Show.where("rating = ?", self.highest_rating).first
  end

  def lowest_rating #returns the lowest value in the ratings column
  end

  def least_popular_show #returns the show with the lowest rating
  end

  def ratings_sum #returns the sum of all the ratings
  end

  def popular_shows #returns an array of all the shows that have a rating higher than 5, use 'where'
  end

  def shows_by_alphabetical_order #returns an array of all the shows in alphabetical order according to names, use 'order'
  end
end
