class TrimDecorator < Decorator
  def correct_name
    max_length = 10
    name = @nameable.correct_name
    name.length > max_length ? name[0..max_length] : name
  end
end
