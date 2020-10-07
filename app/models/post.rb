class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_many :comments
  has_one_attached :image
  belongs_to_active_hash :member
  belongs_to_active_hash :transportation
  belongs_to_active_hash :satisfaction_level
  belongs_to_active_hash :prefecture

  with_options presence: true do
    validates :image
    validates :name
    validates :description
    validates :member_id, :transportation_id, :satisfaction_level_id, :prefecture_id, numericality: { other_than: 1, message: 'Select' }
  end
end