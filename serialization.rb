require './BasicSerializable'
class Person

include BasicSerializable

  def initialize(name,age,gender)
    @name => name
    @age => age
    @gender => gender
  end 

  def to_msgpack
      MessagePack.dump ({
          :name => @name,
          :age => @age,
          :gender => @gender
          })
  end 

  def self.from_msgpack(string)
    data = MessagePack.load string
    self.new(data['name'], data['age'], data['gender'])
  end 

end 

person = Person.new('Jon',25,'Male')

p person.serialize