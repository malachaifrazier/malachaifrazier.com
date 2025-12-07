class Article < ApplicationRecord
  # visitable :ahoy_visit
  validates :title, :slug, :body, :excerpt, :publish_at, presence: true
  validates :slug, uniqueness: true
  has_rich_text :body

  scope :published, -> { where.not(publish_at: nil) }

  # Add excerpt after body is set
  after_initialize :set_excerpt
  
  def to_param
    slug
  end
  
  def formatted_date
    publish_at&.strftime('%Y-%m-%d')
  end

  private

  def set_excerpt
    self.excerpt = body.to_plain_text.truncate(100) if body.present?
  end
end
