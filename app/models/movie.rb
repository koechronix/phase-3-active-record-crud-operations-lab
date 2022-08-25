class Movie < ActiveRecord::Base
    @@count = 0

  def self.find_all_movies_by_year(year)
    Movie.where(year: year)
  end

  def self.create_with_title(title)
    Movie.create(title: title)
  end

  def self.first_movie
    Movie.first
  end

  def self.last_movie
    Movie.last
  end

  def self.movie_count
    Movie.count
  end

  def self.find_movie_with_id(id)
    Movie.find_by(id: id)
  end

  # review this
  def self.find_movie_with_attributes(attributes)
    Movie.find_by(
      title: attributes[:title],
      release_date: attributes[:release_date],
    )
  end

  def self.find_movies_after_2002
    Movie.where('release_date > 2002')
  end

  def self.update_all_titles(new_title)
    Movie.update_all(title: new_title)
  end

  def self.delete_by_id(id)
    Movie.delete(id)
  end

  def self.delete_all_movies
    Movie.delete_all
  end

  # instance variable
  def update_with_attributes(attributes)
    self.update(attributes)
  end

end