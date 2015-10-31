roles = Role.create([
  {title: 'admin'},
  {title: 'user'}
]) if Role.count == 0

payments = Payment.create([
  {type_of_paiment: 'cash payment'}
]) if Payment.count == 0


orders = Order.all
orders.each do |o|
  o.destroy
end

users = User.all
users.each do |u|
  u.destroy
end

products = Product.all
products.each do |p|
  p.destroy
end

brands = Brand.all
brands.each do |b|
  b.destroy
end

categories = Category.all
categories.each do |c|
  c.destroy
end

brands = []
brands << Brand.create(title: 'alexis Hudson', description: 'alexis Hudson', gender: Brand::Genders[0])
brands << Brand.create(title: 'ben sherman', description: 'ben sherman', gender: Brand::Genders[0])


categories = []
categories << Category.create(category: "Handbags")
categories << Category.create(category: "Accessories")
categories << Category.create(category: "Wallets")
categories << Category.create(category: "Shoes")
categories << Category.create(category: "Shirts")
categories << Category.create(category: "Dresses")

1.upto(20) do |n|
  product = Product.create(name: 'Handbags',description: 'Handbags', category_id: categories[0].id, brand_id: brands[0].id, price: 54 * n)

  product.photos.create(orig: '0001-2.jpg', large: 'large/0001-2.jpg', small: 'small/0001-2.jpg')
  product.photos.create(orig: '0001-1.jpg', large: 'large/0001-1.jpg', small: 'small/0001-1.jpg')
  product.photos.create(orig: '0001-3.jpg', large: 'large/0001-3.jpg', small: 'small/0001-3.jpg')
  product.photos.create(orig: '0001-4.jpg', large: 'large/0001-4.jpg', small: 'small/0001-4.jpg')
  product.photos.create(orig: '0001-5.jpg', large: 'large/0001-5.jpg', small: 'small/0001-5.jpg')
end

1.upto(20) do |n|
  product = Product.create(name: 'Accessories',description: 'Accessories', category_id: categories[1].id, brand_id: brands[0].id, price: 50 * n)

  product.photos.create(orig: '0001-2.jpg', large: 'large/0001-2.jpg', small: 'small/0001-2.jpg')
  product.photos.create(orig: '0001-1.jpg', large: 'large/0001-1.jpg', small: 'small/0001-1.jpg')
  product.photos.create(orig: '0001-3.jpg', large: 'large/0001-3.jpg', small: 'small/0001-3.jpg')
  product.photos.create(orig: '0001-4.jpg', large: 'large/0001-4.jpg', small: 'small/0001-4.jpg')
  product.photos.create(orig: '0001-5.jpg', large: 'large/0001-5.jpg', small: 'small/0001-5.jpg')
end

1.upto(30) do |n|
  product = Product.create(name: 'Wallets',description: 'Wallets', category_id: categories[2].id, brand_id: brands[0].id, price: 50 * n)

  product.photos.create(orig: '0001-2.jpg', large: 'large/0001-2.jpg', small: 'small/0001-2.jpg')
  product.photos.create(orig: '0001-1.jpg', large: 'large/0001-1.jpg', small: 'small/0001-1.jpg')
  product.photos.create(orig: '0001-3.jpg', large: 'large/0001-3.jpg', small: 'small/0001-3.jpg')
  product.photos.create(orig: '0001-4.jpg', large: 'large/0001-4.jpg', small: 'small/0001-4.jpg')
  product.photos.create(orig: '0001-5.jpg', large: 'large/0001-5.jpg', small: 'small/0001-5.jpg')
end

1.upto(20) do |n|
  product = Product.create(name: 'Shoes',description: 'Shoes', category_id: categories[3].id, brand_id: brands[0].id, price: 50 * n)

  product.photos.create(orig: '0001-2.jpg', large: 'large/0001-2.jpg', small: 'small/0001-2.jpg')
  product.photos.create(orig: '0001-1.jpg', large: 'large/0001-1.jpg', small: 'small/0001-1.jpg')
  product.photos.create(orig: '0001-3.jpg', large: 'large/0001-3.jpg', small: 'small/0001-3.jpg')
  product.photos.create(orig: '0001-4.jpg', large: 'large/0001-4.jpg', small: 'small/0001-4.jpg')
  product.photos.create(orig: '0001-5.jpg', large: 'large/0001-5.jpg', small: 'small/0001-5.jpg')
end

1.upto(20) do |n|
  product = Product.create(name: 'Shirts',description: 'Shirts', category_id: categories[4].id, brand_id: brands[0].id, price: 50 * n)

  product.photos.create(orig: '0001-2.jpg', large: 'large/0001-2.jpg', small: 'small/0001-2.jpg')
  product.photos.create(orig: '0001-1.jpg', large: 'large/0001-1.jpg', small: 'small/0001-1.jpg')
  product.photos.create(orig: '0001-3.jpg', large: 'large/0001-3.jpg', small: 'small/0001-3.jpg')
  product.photos.create(orig: '0001-4.jpg', large: 'large/0001-4.jpg', small: 'small/0001-4.jpg')
  product.photos.create(orig: '0001-5.jpg', large: 'large/0001-5.jpg', small: 'small/0001-5.jpg')
end