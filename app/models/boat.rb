class Boat < ActiveRecord::Base
  belongs_to  :captain
  has_many    :boat_classifications
  has_many    :classifications, through: :boat_classifications

  def self.first_five
    all.limit(5)
  end

  def self.dinghy
    where("length <?",20)
  end

  def self.ship
    where("length >=?",20)
  end

  def self.last_three_alphabetically
    all.sort_by{|n| n.name}.last(3).reverse
  end



end #ends Boat class
