puts "Removing all gardens..."
Garden.destroy_all if Rails.env.development?

puts "Creating 2 gardens..."
garden = Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg",
  category: Garden::CATEGORIES.sample
)

Plant.create!(
  name: 'Rose',
  image_url: 'https://images.unsplash.com/photo-1496062031456-07b8f162a322?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  garden: garden
)

# plant = Plant.new(name: 'Rose', image_url: '')
# plant.garden = garden
# plant.save!

garden.plants.create!(name: 'Lavander', image_url: 'https://images.unsplash.com/photo-1604695369516-04fd66f579bf?q=80&w=1976&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D')

Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg",
  category: Garden::CATEGORIES.sample
)
puts "Done! 🎉"
