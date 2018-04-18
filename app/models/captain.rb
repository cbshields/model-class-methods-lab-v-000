class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    includes(boats: :classifications).where(classifications: {name: "Catamaran"})
  end

  def self.sailors
    includes(boats: :classifications).where(classifications: {name: "Sailboat"}).distinct
  end

  def self.motorboats
    includes(boats: :classifications).where(classifications: {name: "Motorboat"}).distinct
  end

  def self.talented_seafarers
    
  end

  

  def self.non_sailors

  end

end #ends Captain class
