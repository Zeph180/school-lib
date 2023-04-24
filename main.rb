require './app'
require_relative './mainMenu'
# Main class to start the library app
class Main
  def initialize
    @app = App.new
    @main_menu = MainMenu.new(@app)
  end
  def start
    @main_menu.display_menu
  end
end
main = Main.new
main.start