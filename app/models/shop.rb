class Shop < ApplicationRecord

  geocoded_by :address
  after_validation :geocode
end



  def address
    "#{address}"
  end