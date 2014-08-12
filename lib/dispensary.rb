class Dispensary

 attr_accessor :name, :id

 def initialize(attributes)

   @id = attributes[:id]
   @name = attributes[:name]

  end

 def save

   result = DB.exec("INSERT INTO dispensary (name) VALUES ( '#{@name}') RETURNING id;")


 end

 def self.all

   dispensaries = []
   results = DB.exec("SELECT * FROM dispensary;")

   results.each do |result|
     dispensaries << Dispensary.new({id: result['id'].to_i, name: result['name']})

    end
dispensaries
  end
end
