#Full Unless Statement
#unless games.empty?
#  puts "Games in your vast collection: #{games.count}"
#end

#Single Line Unless Statement
#puts "Games in your vast collection: #{games.count}" unless games.empty?

#Implied Nil
#search_index = games.find_index(search)
#if search_index
#  puts "Game #{search} Found: #{games[search_index]} at index #{search_index}."
#else
#  puts "Game #{search} not found."
#end

#games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
#matched_games = games.grep(Regexp.new(search))

#Short Circuit And
# Found an exact match
#puts "Game #{search} found." if matched_games.length > 0 && matched_games.include?(search)

#Conditional Assignment
#search ||= ""
#games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]

#matched_games = games.grep(Regexp.new(search))
#puts "Found the following games..."
#matched_games.each do |game|
#  puts "- #{game}"
#end


#Conditional Return
#search = "Contra"
#games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
#search_index = games.find_index(search)
#puts search_result = if search_index
#  "Game #{search} found: #{games[search_index]} at index #{search_index}."
#else
#  "Game #{search} not found."
#end


#def search(games, search_term)
#  search_index = games.find_index(search_term)
#  if search_index
#    "Game #{search_term} found: #{games[search_index]} at index #{search_index}."
#  else
#    "Game #{search_term} not found."
#  end
#end
#
#games = ["Super Mario Bros.", "Contra", "Metroid", "Mega Man 2"]
#puts search(games, "Contra")


#Short Circuit Evaluation
def search_index(games, search_term)
  search_index = games.find_index(search_term) || "Not Found"
end




