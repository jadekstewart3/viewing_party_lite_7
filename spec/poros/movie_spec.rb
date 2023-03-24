require "rails_helper"
RSpec.describe Movie do
  describe "#intialize" do
    it "exits" do
      attributes = {  "id" => 238,
                      "title2" => "The Godfather",
                      "summary" =>
                        "Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.",
                      "vote_average2" => 8.712,
                      "cast" =>
                        { "Don Vito Corleone" => "Marlon Brando",
                          "Don Michael Corleone" => "Al Pacino",
                          "Santino 'Sonny' Corleone" => "James Caan",
                          "Tom Hagen" => "Robert Duvall",
                          "Pete Clemenza" => "Richard S. Castellano",
                          "Kay Adams" => "Diane Keaton",
                          "Constanzia 'Connie' Corleone-Rizzi" => "Talia Shire",
                          "Carlo Rizzi" => "Gianni Russo",
                          "Capt. Mark McCluskey" => "Sterling Hayden",
                          "Virgil 'The Turk' Sollozzo" => "Al Lettieri" },
                      "total_reviews_count" => 2,
                      "review_info" =>
                        { "futuretv" =>
                          ["The Godfather Review by Al Carlson\r\n\r\nThe Godfather is a film considered by most to be one of the greatest ever made. From The American Film Institute to as voted by users on the Internet Movie Database (IMDB) it is consider to be one of the best. As a film that ranks as high as other masterpieces including Citizen Kane, Pulp Fiction and 12 Angry Men, The Godfather is an exceptional piece of cinema excellence that is flawless and is simply the pinnacle crime drama.\r\nThe Godfather revolves around the Corleone’s, an Italian family with deep roots in the New York City mafia. The head of the Corleone’s is Don Vito Corleone, a man who takes care of his family and demands respect in return. His son Michael however, who just returned home from World War II, doesn’t want to become involved with the family business. The Sollozzo’s, a family of drug dealers, confront Don and request protection in exchange for profits from the Sollozzo’s drug sales. But Don declines the offer, for he is against selling narcotics. The rejected offer starts what turns into an all out mafia war between the two families with Michael diving deep into the mafia lifestyle.\r\nThe characters are portrayed by a legendary all-star cast including Marlon Brando as Don, Al Pacino as his son Michael and James Caan as Don’s oldest son Sonny. The casting for this film has been considered by many to be the best casted film in history for their astonishing performances. All three main actors were nominated for an academy award, but only Marlon Brando won an Oscar for best actor in a leading role. It’s fascinating to watch how these characters change over the course of the movie, with one in particular changing drastically.\r\nDirecter Francis Ford Coppola, being raised in an Italian-American family in New York, understood Italian culture exceptionally and made the film very authentically. Everything from the wedding dances to the cuisine to the terms used by the characters in Sicilian come from Coppola’s first-hand knowledge of Italian-American culture. Italian composer Nino Rota did an outstanding job making the soundtrack for the film, despite not getting the Oscar for best music (but he did win an Oscar for his work in the sequel, The Godfather: Part II). Virtually everyone recognizes that iconic trumpet solo once it starts playing. He also wrote the score for another great Italian film 8 1/2. \r\nThis film should be immediately followed up by it’s sequel, The Godfather: Part II, which also won best picture. The series still holds the title of most best picture awards for a film series to this day. They’re both flawless crime dramas and have earned their titles as some of the best pieces of cinema ever. I will guarantee you won’t be able to see this film only once, as it gets better after continual viewings. There is really nothing more to add other than if you haven’t seen this movie yet, it’s about time you did. The Godfather is a movie you can’t refuse.",
                           10.0],
                          "crastana" =>
                          ["The best movie ever...\r\nA masterpiece by the young and talented Francis Ford Coppola, about a Mob family and their drama, the story telling is perfect, the acting good, sometimes a little over the top in the case of Thalia Shire (the sister of the director)\r\n\r\nThe 70's were the best years for Hollywood.",
                           10.0] },
                      "genres" => %w[Drama Crime],
                      "runtime" => 175 }

      movie = Movie.new(attributes)

      expect(movie).to be_a(Movie)
      expect(movie.movie_id_show).to eq(238)
      expect(movie.title_show).to eq("The Godfather")
      expect(movie.summary).to eq("Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.")
      expect(movie.vote_average_show).to eq(8.712)
      expect(movie.cast).to be_a(Hash)
      expect(movie.cast.keys.count).to eq(10)
      expect(movie.total_review_count).to eq(2)
      expect(movie.review_info).to be_a(Hash)
      expect(movie.review_info.keys.count).to eq(2)
      expect(movie.genres).to eq(%w[Drama Crime])
      expect(movie.runtime).to eq(175)
    end
  end
end
