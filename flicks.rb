class Movie
  attr_reader :rank
  attr_accessor :title

  def initialize(title, rank=100)
    @title = title.capitalize
    @rank = rank
  end
  
  def normalized_rank
    @rank / 10 
  end

  def thumbs_up
    @rank += 10
  end

  def thumbs_down
    @rank -= 10
  end

  def to_s #listing
    "#{@title} has a rank of #{normalized_rank}"
  end
end

movie1 = Movie.new("goonies", 100)
movie2 = Movie.new("ghostbusters", 90)
movie3 = Movie.new("goldfinger")

movies = [movie1, movie2, movie3]

movies.each do |m|
  m.thumbs_up
  puts m
end
