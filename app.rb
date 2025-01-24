require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:home)
end

get("/rock") do
  opp = rand(1..3)
  @result = ""
  @them = ""
  @you = "rock"
  if opp == 1
    @result = "won"
    @them = "scissors"
  elsif opp == 2
    @result = "lost"
    @them = "paper"
  else
    @result = "tied"
    @them = "rock"
  end
  erb(:play)
end

get("/paper") do
  opp = rand(1..3)
  @result = ""
  @them = ""
  @you = "paper"
  if opp == 1
    @result = "won"
    @them = "rock"
  elsif opp == 2
    @result = "lost"
    @them = "scissors"
  else
    @result = "tied"
    @them = "paper"
  end
  erb(:play)
end

get("/scissors") do
  opp = rand(1..3)
  @result = ""
  @them = ""
  @you = "scissors"
  if opp == 1
    @result = "won"
    @them = "paper"
  elsif opp == 2
    @result = "lost"
    @them = "rock"
  else
    @result = "tied"
    @them = "scissors"
  end
  erb(:play)
end
