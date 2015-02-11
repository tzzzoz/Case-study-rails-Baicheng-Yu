class ProSante < ActiveRecord::Base
  has_one :adresse
  accepts_nested_attributes_for :adresse
end
