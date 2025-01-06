class BlogPost < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true

  scope :sorted, ->{ order(created_at: :desc) }

  has_many :comments, dependent: :destroy

end
