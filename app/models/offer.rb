class Offer < ApplicationRecord
  belongs_to :user

  validates :advertiser_name, presence: true, uniqueness: true
  validates :url, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp }
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true

  scope :enabled, lambda {
    where(disable: false)
      .where('starts_at <= :time and (ends_at is null or ends_at >= :time)',
             time: Time.zone.now)
  }

  scope :newest_first, -> { order 'id desc' }
  scope :order_by_premium, -> { order 'premium desc' }
  scope :order_by_remaining_time, -> { order 'ends_at nulls first' }

  # when current time >= ends at, state = disabled

  def enabled?
    return false if manually_disable?

    started = starts_at <= Time.zone.now
    return started if ends_at.blank?

    started && ends_at >= Time.zone.now
  end

  def manually_disable?
    attributes['disable']
  end

  def disable?
    !enabled?
  end
end
