class Project < ApplicationRecord
  # visitable :ahoy_visit
  validates :name, :slug, :year, :description, :outcome, presence: true
  validates :slug, uniqueness: true

  scope :featured, -> { where(featured: true) }
    
  def tech_list
    tech_stack || []
  end

  def to_param
    slug
  end

end
