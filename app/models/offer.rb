class Offer < ApplicationRecord
  belongs_to :user
  has_one_attached :photo

  validates :advertiser_name, presence: true, uniqueness: true
  validates :url, presence: true, format: { with: URI.regexp }
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true
end
