require 'json'


class A
    def initialize(string,number)
        @string = string
        @number = number
    end 

    def to_s 
        "In A:\n #{@string}, #{@number}\n"
    end 
    
    def to_json(*a)
        {
        "json_class"   =&gt; self.class.name,
        "data"         =&gt; {"string" =&gt; @string, "number" =&gt; @number }
        }.to_json(*a)
    end

    def self.json_create(o)
        new(o["data"]["string"], o["data"]["number"])
    end

  class B 
    def initialize(number, a_object)
      @number = number
      @a_object = a_object
    end 

    def to_s
      "In B: #{@number} \n #{@a_object.to_s}\n"
    end 
  end 

  class C 
    def initialize(b_object, a_object)
      @b_object = b_object
      @a_object = a_object
    end

    def to_s
      "In C:\n #{@a_object} #{@b_object}\n"
    end 
  end


a = A.new("hello world",5)
json_string = a.to_json
puts json_string
puts JSON.parse(json_string)



  