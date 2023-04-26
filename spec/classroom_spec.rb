require 'rspec'
require_relative '../classroom'
require_relative '../student'

describe Classroom do
  let(:classroom) { Classroom.new('History') }

  describe '#initialize' do
    it 'creates a classroom with a label' do
      expect(classroom.label).to eq('History')
    end

    it 'initializes an empty list of students' do
      expect(classroom.students).to be_empty
    end
  end
end
