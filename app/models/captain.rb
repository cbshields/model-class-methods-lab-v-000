class Captain < ActiveRecord::Base
  has_many :boats

  def self.catamaran_operators
    includes(:classifications).where(classifications: {name: catamaran})
  end

  def self.sailors

  end

  def self.talented_seafarers

  end

  def self.non_sailors

  end

end #ends Captain class
