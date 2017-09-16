class Ride < ApplicationRecord
  belongs_to :user
  geocoded_by :from, latitude: :lat_from, longitude: :long_from
  geocoded_by :to, latitude: :lat_to, longitude: :long_to
  after_validation :geocode
end
