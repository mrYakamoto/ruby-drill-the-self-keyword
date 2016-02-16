require_relative 'self'

describe Person do
  describe '#example_instance_method' do
    it 'should return a greeting from the instance' do
      p = Person.new
      expect(p.example_instance_method).to eq("Hello from an instance method!")
    end
  end

  describe '#what_is_self?' do
    it 'returns itself (instance object)' do
      p = Person.new
      expect(p.what_is_self?).to be_a Person

    end
  end

  describe '::example_class_method' do
    it 'should return a greeting from the class' do
      expect(Person::example_class_method).to eq("Hello from a class method!")
    end
  end

  describe '::what_is_self?' do
    it 'returns class as self' do
      expect(Person::what_is_self?).to eq(Person)
    end
  end
end

describe Math do
  describe '::hypot' do
    it 'return hypotenuse of right triangle' do
      expect(Math.hypot(3,4)).to eq(5)
    end
  end
end
