require_relative 'decorator'
class TrimmerDecorator < Decorator
  def correct_name
    max_length = 9
    name = @nameable.correct_name
    name.length > max_length ? name[0..max_length] : name
  end
end
