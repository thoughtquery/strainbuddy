class Strain

 attr_accessor :name, :smells, :bloom, :id

  def initialize(attributes)
    @id = attributes[:id]
    @name = attributes[:name]
    @smells = attributes[:smells]
    @bloom = attributes[:bloom]

  end

  def save

    result = DB.exec("INSERT INTO strain (name, bloom, smells) VALUES ( '#{@name}', #{bloom}, '#{smells}') RETURNING id;")


  end

  def self.all

    strains = []
    results = DB.exec("SELECT * FROM strain;")

    results.each do |result|
      strains << Strain.new({id: result['id'].to_i, name: result['name'], smell: result['smells'], bloom: result['bloom']})

    end
strains
  end

  
end
