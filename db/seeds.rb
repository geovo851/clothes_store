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

description_brand = '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor 
incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipisicing elit,
 sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, 
consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
 Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore 
et dolore magna aliqua.</p>'

brands_men = []
brands_men << Brand.create(title: 'Hugo Boss', description: '<h3>Hugo Boss</h3>' + description_brand,
                           gender: Brand::Genders[0])
brands_men << Brand.create(title: 'Louis Vuitton', description: '<h3>Hugo Boss</h3>' + description_brand,
                           gender: Brand::Genders[0])
brands_men << Brand.create(title: 'Brooks Brothers', description: '<h3>Brooks Brothers</h3>' + description_brand,
                           gender: Brand::Genders[0])
brands_men << Brand.create(title: 'Christian Dior S.A.', description: '<h3>Christian Dior S.A.</h3>' + description_brand,
                           gender: Brand::Genders[0])
brands_men << Brand.create(title: 'Marc Jacobs', description: '<h3>Marc Jacobs</h3>' + description_brand,
                           gender: Brand::Genders[0])
brands_men << Brand.create(title: 'Wrangler', description: '<h3>Wrangler</h3>' + description_brand,
                           gender: Brand::Genders[0])
brands_men << Brand.create(title: 'Dolce & Gabbana', description: '<h3>Dolce & Gabbana</h3>' + description_brand,
                           gender: Brand::Genders[0])
brands_men << Brand.create(title: 'French Connection', description: '<h3>French Connection</h3>' + description_brand,
                           gender: Brand::Genders[0])
brands_men << Brand.create(title: 'Hollister Co.', description: '<h3>Hollister Co.</h3>' + description_brand,
                           gender: Brand::Genders[0])

categories = []
categories << Category.create(category: "Men's Outerwear")
categories << Category.create(category: "Men's Shirts")
categories << Category.create(category: "Men's Shoes")

categories << Category.create(category: "Women's Outerwear")
categories << Category.create(category: "Women's Dresses")
categories << Category.create(category: "Women's Shoes")


categories << Category.create(category: "Wallets")



description_product = '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
<ul>
<li>Material: Cotton, Polyester</li>
<li>Clothing Length: Regular</li>
<li>Sleeve Length: Full</li>
<li>Style: Fashion</li>
<li>Weight: 0.477KG</li>
<li>Package Contents: 1 x Hoodie</li>       </ul>'

def add_photo product_photos, photo, photo_small
  product_photos.create(orig: photo, large: photo, small: photo_small)
  product_photos.create(orig: photo, large: photo, small: photo_small)
  product_photos.create(orig: photo, large: photo, small: photo_small)
  product_photos.create(orig: photo, large: photo, small: photo_small)
  product_photos.create(orig: photo, large: photo, small: photo_small)
end

# Outerwear Men
1.upto(2) do |n|
  # First Outerwear
  product = Product.create(name: 'Double Breasted Pocket Hemming Slimming Hooded',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 54 * n, photo: 'outerwear_small_1.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_1.jpg', 'outerwear_small_1.jpg'

  product = Product.create(name: 'Turn-Down Collar Double-Breasted Long Sleeve',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 25 * n, photo: 'outerwear_small_2.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_2.jpg', 'outerwear_small_2.jpg'

  product = Product.create(name: 'Laconic Stand Collar Patch Pocket Solid Color Slimming',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 36 * n, photo: 'outerwear_small_3.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_3.jpg', 'outerwear_small_3.jpg'

  product = Product.create(name: 'Slimming Drawstring Wool Collar Multi-Button Flap Pocket',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 85 * n, photo: 'outerwear_small_4.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_4.jpg', 'outerwear_small_4.jpg'

  product = Product.create(name: 'Color Block Multi-Zipper Stereo Patch Pocket',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 45 * n, photo: 'outerwear_small_5.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_5.jpg', 'outerwear_small_5.jpg'

  product = Product.create(name: 'Slimming Rib Spliced Button and Epaulet Design Stand Collar',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 64 * n, photo: 'outerwear_small_6.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_6.jpg', 'outerwear_small_6.jpg'


  #Second Outerwear
  product = Product.create(name: 'Slimming Rib Spliced Button and Epaulet Design Stand Collar',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 40 * n, photo: 'outerwear_small_6.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_6.jpg', 'outerwear_small_6.jpg'

  product = Product.create(name: 'Color Block Multi-Zipper Stereo Patch Pocket',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 26 * n, photo: 'outerwear_small_5.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_5.jpg', 'outerwear_small_5.jpg'

  product = Product.create(name: 'Slimming Drawstring Wool Collar Multi-Button Flap Pocket',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 25 * n, photo: 'outerwear_small_4.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_4.jpg', 'outerwear_small_4.jpg'

  product = Product.create(name: 'Turn-Down Collar Double-Breasted Long Sleeve',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 22 * n, photo: 'outerwear_small_2.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_2.jpg', 'outerwear_small_2.jpg'

  product = Product.create(name: 'Double Breasted Pocket Hemming Slimming Hooded',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 20 * n, photo: 'outerwear_small_1.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_1.jpg', 'outerwear_small_1.jpg'


  product = Product.create(name: 'Laconic Stand Collar Patch Pocket Solid Color Slimming',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 31 * n, photo: 'outerwear_small_3.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_3.jpg', 'outerwear_small_3.jpg'
end

# Outerwear Women
1.upto(2) do |n|
  # First Outerwear
  product = Product.create(name: 'Double Breasted Pocket Hemming Slimming Hooded',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 54 * n, photo: 'outerwear_small_1.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_1.jpg', 'outerwear_small_1.jpg'

  product = Product.create(name: 'Turn-Down Collar Double-Breasted Long Sleeve',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 25 * n, photo: 'outerwear_small_2.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_2.jpg', 'outerwear_small_2.jpg'

  product = Product.create(name: 'Laconic Stand Collar Patch Pocket Solid Color Slimming',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 36 * n, photo: 'outerwear_small_3.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_3.jpg', 'outerwear_small_3.jpg'

  product = Product.create(name: 'Slimming Drawstring Wool Collar Multi-Button Flap Pocket',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 85 * n, photo: 'outerwear_small_4.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_4.jpg', 'outerwear_small_4.jpg'

  product = Product.create(name: 'Color Block Multi-Zipper Stereo Patch Pocket',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 45 * n, photo: 'outerwear_small_5.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_5.jpg', 'outerwear_small_5.jpg'

  product = Product.create(name: 'Slimming Rib Spliced Button and Epaulet Design Stand Collar',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 64 * n, photo: 'outerwear_small_6.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_6.jpg', 'outerwear_small_6.jpg'


  #Second Outerwear
  product = Product.create(name: 'Slimming Rib Spliced Button and Epaulet Design Stand Collar',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 40 * n, photo: 'outerwear_small_6.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_6.jpg', 'outerwear_small_6.jpg'

  product = Product.create(name: 'Color Block Multi-Zipper Stereo Patch Pocket',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 26 * n, photo: 'outerwear_small_5.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_5.jpg', 'outerwear_small_5.jpg'

  product = Product.create(name: 'Slimming Drawstring Wool Collar Multi-Button Flap Pocket',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 25 * n, photo: 'outerwear_small_4.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_4.jpg', 'outerwear_small_4.jpg'

  product = Product.create(name: 'Turn-Down Collar Double-Breasted Long Sleeve',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 22 * n, photo: 'outerwear_small_2.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_2.jpg', 'outerwear_small_2.jpg'

  product = Product.create(name: 'Double Breasted Pocket Hemming Slimming Hooded',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 20 * n, photo: 'outerwear_small_1.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_1.jpg', 'outerwear_small_1.jpg'


  product = Product.create(name: 'Laconic Stand Collar Patch Pocket Solid Color Slimming',
                           category_id: categories[0].id, brand_id: brands_men[0].id, 
                           price: 31 * n, photo: 'outerwear_small_3.jpg',
                           description: description_product)

  add_photo product.photos, 'outerwear_3.jpg', 'outerwear_small_3.jpg'
end







# 1.upto(20) do |n|
#   product = Product.create(name: 'Accessories',description: 'Accessories', category_id: categories[1].id, brand_id: brands[0].id, price: 50 * n, photo: 'w_pic1.jpg')

#   product.photos.create(orig: '2.jpg', large: '2.jpg', small: '1.jpg')
#   product.photos.create(orig: '0001-1.jpg', large: 'large/0001-1.jpg', small: 'small/0001-1.jpg')
#   product.photos.create(orig: '0001-3.jpg', large: 'large/0001-3.jpg', small: 'small/0001-3.jpg')
#   product.photos.create(orig: '0001-4.jpg', large: 'large/0001-4.jpg', small: 'small/0001-4.jpg')
#   product.photos.create(orig: '0001-5.jpg', large: 'large/0001-5.jpg', small: 'small/0001-5.jpg')
# end

# 1.upto(30) do |n|
#   product = Product.create(name: 'Wallets',description: 'Wallets', category_id: categories[2].id, brand_id: brands[0].id, price: 50 * n, photo: 'w_pic1.jpg')

#   product.photos.create(orig: '0001-2.jpg', large: 'large/0001-2.jpg', small: 'small/0001-2.jpg')
#   product.photos.create(orig: '0001-1.jpg', large: 'large/0001-1.jpg', small: 'small/0001-1.jpg')
#   product.photos.create(orig: '0001-3.jpg', large: 'large/0001-3.jpg', small: 'small/0001-3.jpg')
#   product.photos.create(orig: '0001-4.jpg', large: 'large/0001-4.jpg', small: 'small/0001-4.jpg')
#   product.photos.create(orig: '0001-5.jpg', large: 'large/0001-5.jpg', small: 'small/0001-5.jpg')
# end

# 1.upto(20) do |n|
#   product = Product.create(name: 'Shoes',description: 'Shoes', category_id: categories[3].id, brand_id: brands[0].id, price: 50 * n, photo: 'w_pic1.jpg')

#   product.photos.create(orig: '0001-2.jpg', large: 'large/0001-2.jpg', small: 'small/0001-2.jpg')
#   product.photos.create(orig: '0001-1.jpg', large: 'large/0001-1.jpg', small: 'small/0001-1.jpg')
#   product.photos.create(orig: '0001-3.jpg', large: 'large/0001-3.jpg', small: 'small/0001-3.jpg')
#   product.photos.create(orig: '0001-4.jpg', large: 'large/0001-4.jpg', small: 'small/0001-4.jpg')
#   product.photos.create(orig: '0001-5.jpg', large: 'large/0001-5.jpg', small: 'small/0001-5.jpg')
# end

# 1.upto(20) do |n|
#   product = Product.create(name: 'Shirts',description: 'Shirts', category_id: categories[4].id, brand_id: brands[0].id, price: 50 * n, photo: 'w_pic1.jpg')

#   product.photos.create(orig: '0001-2.jpg', large: 'large/0001-2.jpg', small: 'small/0001-2.jpg')
#   product.photos.create(orig: '0001-1.jpg', large: 'large/0001-1.jpg', small: 'small/0001-1.jpg')
#   product.photos.create(orig: '0001-3.jpg', large: 'large/0001-3.jpg', small: 'small/0001-3.jpg')
#   product.photos.create(orig: '0001-4.jpg', large: 'large/0001-4.jpg', small: 'small/0001-4.jpg')
#   product.photos.create(orig: '0001-5.jpg', large: 'large/0001-5.jpg', small: 'small/0001-5.jpg')
# end
