class Article < ApplicationRecord
  # visitable :ahoy_visit
  validates :title, :slug, :body, :publish_at, presence: true
  validates :slug, uniqueness: true

  def to_param
    slug
  end
end
