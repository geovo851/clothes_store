class Product < ActiveRecord::Base
  Colors = ['Silver', 'Black', 'Dark Black', 'Red']
  Sizes = ['L', 'XL', 'S', 'M']

  belongs_to :category
  has_many :products_orders
  has_many :orders, through: :products_orders
  mount_uploader :photo, ImageUploader

  validates :name, :category_id, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
