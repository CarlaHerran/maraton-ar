
class User < ActiveRecord::Base
has_many :decks, through: :games 

end

class Game < ActiveRecord::Base
  belongs_to :user 
  belongs_to :deck 
end

#p Deck.new("maraton.csv", "maraton1")

class Deck < ActiveRecord::Base
has_many :users, through: :games
end


class Question < ActiveRecord::Base
  belongs_to :deck
end


class Answer < ActiveRecord::Base
  belongs_to :question
end


class Result < ActiveRecord::Base
  belongs_to :game
  belongs_to :question
  belongs_to :answer
end



