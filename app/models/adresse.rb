class Adresse < ActiveRecord::Base
  belongs_to :proSante
  geocoded_by :name
  after_validation :geocode, :if => :name_changed?
  acts_as_gmappable

  def gmaps4rails_address
      name
  end
end
