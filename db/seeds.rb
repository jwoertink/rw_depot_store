# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do |i|
  Product.create!({
    name: "Product #{i}",
    price: i.to_f * 20.0 + 1.0,
    description: "This is the description for product #{i}. It's that awesome!"
    # Need to try and pull this from rw_depot_theme gem
    #image: File.open(File.join(Rails.root, 'app', 'assets', 'images', 'sample.gif'))
  })
end