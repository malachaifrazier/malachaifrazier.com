class Article < ApplicationRecord
  # visitable :ahoy_visit
  validates :title, :slug, :body, :publish_at, presence: true
  validates :slug, uniqueness: true
  has_rich_text :body

  def to_param
    slug
  end
end
