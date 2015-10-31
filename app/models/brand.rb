class Brand < ActiveRecord::Base
  Genders = ['man', 'woman', 'woman and man']
  has_many :products
end
