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

categories = Category.all
categories.each do |c|
  c.destroy
end



categories = []
categories << Category.create(category: "Handbags")
categories << Category.create(category: "Accessories")
categories << Category.create(category: "Wallets")
categories << Category.create(category: "Shoes")
categories << Category.create(category: "Shirts")
categories << Category.create(category: "Dresses")

product = Product.create(name: 'Handbags 9',description: 'Accessories', category_id: categories[0].id, price: 500)

product.photos.create(orig: '0001-2.jpg', large: 'large/0001-2.jpg', small: 'small/0001-2.jpg')
product.photos.create(orig: '0001-1.jpg', large: 'large/0001-1.jpg', small: 'small/0001-1.jpg')
product.photos.create(orig: '0001-3.jpg', large: 'large/0001-3.jpg', small: 'small/0001-3.jpg')
product.photos.create(orig: '0001-4.jpg', large: 'large/0001-4.jpg', small: 'small/0001-4.jpg')
product.photos.create(orig: '0001-5.jpg', large: 'large/0001-5.jpg', small: 'small/0001-5.jpg')


product = Product.create(name: 'Handbags',description: 'Accessories', category_id: categories[0].id, price: 500)

product.photos.create(orig: '0001-2.jpg', large: 'large/0001-2.jpg', small: 'small/0001-2.jpg')
product.photos.create(orig: '0001-1.jpg', large: 'large/0001-1.jpg', small: 'small/0001-1.jpg')
product.photos.create(orig: '0001-3.jpg', large: 'large/0001-3.jpg', small: 'small/0001-3.jpg')
product.photos.create(orig: '0001-4.jpg', large: 'large/0001-4.jpg', small: 'small/0001-4.jpg')
product.photos.create(orig: '0001-5.jpg', large: 'large/0001-5.jpg', small: 'small/0001-5.jpg')

product = Product.create(name: 'Handbags5',description: 'Accessories', category_id: categories[0].id, price: 500)