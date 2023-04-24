# Class responsible for handling user input and displaying menu options
class MainMenu
  OPTIONS = {
    '1' => :list_all_books,
    '2' => :list_all_people,
    '3' => :create_person,
    '4' => :create_book,
    '5' => :create_rental,
    '6' => :list_rentals,
    '7' => :exit
  }.freeze

  def initialize(app)
    @app = app
  end

  # rubocop:disable Metrics/MethodLength
  def display_menu
    puts 'Welcome to School Library App!'
    loop do
      puts 'Please choose an option by entering a number:'
      puts '1 - List all books'
      puts '2 - List all people'
      puts '3 - Create a person'
      puts '4 - Create a book'
      puts '5 - Create a rental'
      puts '6 - List all rentals for a given person id'
      puts '7 - Exit'
      option = gets.chomp

      if OPTIONS.key?(option)
        selected_option = OPTIONS[option]
        if selected_option == :exit
          puts 'Thank you for using our library ¯\^-^/¯'
          return
        else
          @app.send(selected_option)
        end
      else
        puts 'Please enter a number between 1 and 7'
      end
    end
  end
  # rubocop:enable Metrics/MethodLength
end
