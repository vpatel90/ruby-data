class MoviesByActor
  def initialize(movies, actor)
    @movies = movies
    @actor = actor
    @movies_by_actor = []
  end

  def filter
    @movies.each do |movie_hsh|
      stars = movie_hsh[:stars]
      stars.each do |star|
        if star == @actor then @movies_by_actor.push(movie_hsh[:title]) end
      end
    end
    return @movies_by_actor
  end
end

class MoviesByBudget
  def initialize(movies, budget)
    @movies = movies
    @budget = budget
    @low_budget_flix = []
  end

  def filter_low_budget
    @movies.each do |movie_hsh|
      budget = movie_hsh[:budget]
      if budget < @budget then @low_budget_flix.push(movie_hsh[:title]) end
    end
    return @low_budget_flix
  end
end

movies = []

movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

leonardo_movies = MoviesByActor.new(movies, "Leonardo DiCaprio")
print leonardo_movies.filter
puts
low_budget = MoviesByBudget.new(movies, 100)
print low_budget.filter_low_budget
puts
