
User.destroy_all
Restaurant.destroy_all
Tab.destroy_all
Dish.destroy_all

user1 = User.create(email: 'carlos.miguel@gmail.com', password: '121212')
puts "#{User.count} #{User.name} created successfully"

el_taco = Restaurant.create(name: 'El Taco Mexican & Cocktails Bar', address: 'Rua do Diaro de Noticias 23, Lisbon, Portugal', user: user1)
puts "#{Restaurant.count} #{Restaurant.name} created successfully"

Dish.create(name: 'Guacamole com Totopas', description: 'Traditional mexican snack with hamdmade guacamole.', price: '6.50 ', category: 'Starter', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)
Dish.create(name: '', description: '', price: '', category: '', restaurant_id: el_taco)


puts "#{Dish.count} #{Dish.name} created successfully"

Tab.create()
puts "#{Tab.count} #{Tab.name} created successfully"
