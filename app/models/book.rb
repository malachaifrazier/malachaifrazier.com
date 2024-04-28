class Book < ApplicationRecord
  validates :title, :category, :author, presence: true

  def title_and_author
    "#{title} by #{author}"
  end
end
