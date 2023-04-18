class Student < Person
  def initialize(id, age, classroom, name = 'Unknown', parent_permission: true)
    super(id, name, age, parent_permission)
    @classroom = classroom
  end

  attr_accessor :classroom

  def play_hooky
    '¯(ツ)/¯'
  end
end
