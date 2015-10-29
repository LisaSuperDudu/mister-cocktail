class Dose < ActiveRecord::Base
  validates :description, presence: true, uniqueness: true

  belongs_to :cocktail
  belongs_to :ingredient

  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true

  # validates_uniqueness_of :cocktail_id, :scope => [:ingredient_id]
  # validates_uniqueness_of :ingredient_id, :scope => [:cocktail_id]

  # validates :cocktail_id, :uniqueness => { :scope => [:cocktail_id, :ingredient_id] }

  # validates_uniqueness_of :description, scope: [:cocktail_id, :ingredient_id]

end
