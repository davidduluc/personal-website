class BlogPost < ApplicationRecord
  has_rich_text :content

  validates :title, presence: true
  validates :content, presence: true
  validates :published_at, presence: true

  scope :published, -> { where('published_at <= ?', Time.current).order(published_at: :desc) }
end
