# class TasksView
# 	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario

# 	def index
# 	end

#   def create
#   end

#   def delete
#   end

#   def update
#   end

# 	def error
# 	end
# end


class View

  def bienvenida(categories)
    puts "Bienvenido!, Escoge una categoría y presiona enter para empezar"
    categories.each_with_index do |category, index| 
      puts "#{index}- #{category}"
    end
    gets.to_i
  end
    

  def show_question(card)
    puts "Pregunta #{card.question}"
    gets.chomp
  end

  def despedida(correct, incorrect)
    puts "Correct: #{correct}, incorrect: #{incorrect}"
  end

end


# view = View.new
# p view.bienvenida
# p view.despedida(5, 6)