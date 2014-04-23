class Table < ActiveRecord::Base
  has_many :reservations
  has_many :patrons, through: :reservations
end
