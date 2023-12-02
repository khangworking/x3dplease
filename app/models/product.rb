# == Schema Information
#
# Table name: products
#
#  id         :bigint           not null, primary key
#  name       :string
#  image      :string
#  status     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Product < ApplicationRecord
  has_one_attached :image do |attachable|
    attachable.variant :thumbnail, resize_to_limit: [100, 100]
  end

  enum status: {
    created: 'Created',
    reviewing: 'In review',
    approved: 'Approved',
    deny: 'Deny',
    published: 'Published',
    limited: 'Limited'
  }

  validates :name, :status, presence: true
  validates :name, length: { minimum: 5, maximum: 255 }
  validates :status, inclusion: { in: statuses.keys }

  def thumb_url
    Rails.application.routes.url_helpers.rails_representation_url(image.variant(:thumbnail).processed, only_path: true)
  end
end
