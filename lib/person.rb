class Person
  # your code here
  def initialize attributes = nil
    if attributes
      attributes.map do |key,value|
        self.class.attr_accessor key
        self.send "#{key}=", value
      end
    end
  end
end
