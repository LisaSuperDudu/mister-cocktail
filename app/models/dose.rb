class Dose < ActiveRecord::Base
  belongs_to :coktail
  belongs_to :ingredient
end
