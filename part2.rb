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

low_budget = Array.new

leonardo_movies = Array.new

movies.each do |movie_hsh|
  budget = movie_hsh[:budget]
  stars = movie_hsh[:stars]
  if budget < 100 then low_budget.push(movie_hsh[:title]) end

  stars.each do |star|
    if star == "Leonardo DiCaprio" then leonardo_movies.push(movie_hsh[:title]) end
  end

end

print low_budget
puts
print leonardo_movies
