puts 'Removing all existing restaurants...'
Restaurant.destroy_all

puts 'Creating restaurants...'
Restaurant.create(name: 'Ramiro', rating: 5, address: 'Street 1')
Restaurant.create(name: 'Galeto', rating: 4, address: 'Street 2')
Restaurant.create(name: 'McDonalds', rating: 2, address: 'Street 3')
puts 'Done!'
