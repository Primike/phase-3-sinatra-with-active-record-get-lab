class BakedGood < ActiveRecord::Base
  belongs_to :bakery

  def self.by_price 
    self.all.sort_by { |x| -x[:price]}
  end

  def self.most_expensive
    x = self.all.sort_by { |x| -x[:price]}
    x[0]
  end
end
