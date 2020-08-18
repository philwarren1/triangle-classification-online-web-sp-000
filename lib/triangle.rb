class Triangle

 attr_accessor :equilateral, :isosceles, :scalene  
  
  def initialize
  end 
    
end

class Person
  attr_accessor :partner, :name
 
  def initialize(name)
    @name = name
  end
 
  def get_married(person)
    self.partner = person
    if person.class != Person
      begin
        raise PartnerError
      rescue PartnerError => error
          puts error.message
      end
    else
      person.partner = self
    end
  end
 
  class PartnerError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end
end