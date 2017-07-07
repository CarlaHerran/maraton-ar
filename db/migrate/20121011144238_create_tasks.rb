class CreateTasks < ActiveRecord::Migration[5.0]
  def change
      # Completa con las columnas que necesites
    create_table :users do |u|
      u.string :name
      u.string :password, through: :games
    end

    create_table :games do |g|
      g.belongs_to :user, index: true
      g.belongs_to :deck
    end

    create_table :decks do |d|
      d.string :name
    end

    create_table :questions do |q|
      q.string :deck
    end
    create_table :answers do |a|
      a.string :question
    end

    create_table :results  do |r|
      r.belongs_to :game
      r.belongs_to :question
      r.belongs_to :answer
    end

  end
end
