class Location < ApplicationRecord
  geocoded_by :full_street_address
  after_validation :geocode

  DISTANCES = [ '1 mile', '1/2 mile', '1/4 mile' ]

  def full_street_address
    "#{street_address}, #{city}, GA"
  end
end
