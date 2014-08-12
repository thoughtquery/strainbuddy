class Dispensary

 attr_accessor :name, :id

 def initialize(attributes)

   @id = attributes[:id]
   @name = attributes[:name]

  end

 def self.all

   dispensaries = []

 end

end
