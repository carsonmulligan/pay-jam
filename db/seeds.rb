require "byebug"
TabDish.destroy_all
Dish.destroy_all
Tab.destroy_all
Restaurant.destroy_all
User.destroy_all

user1 = User.create(email: 'carlos.miguel@gmail.com', password: '121212')
puts "#{User.count} #{User.name} created successfully"

el_taco = Restaurant.create(name: 'El Taco Mexican & Cocktails Bar', address: 'Rua do Diaro de Noticias 23, Lisbon, Portugal', user: user1)
puts "#{Restaurant.count} #{Restaurant.name} created successfully"

# starters
Guacamole = Dish.create(name: 'Guacamole com Totopas', description: 'Traditional mexican snack with hamdmade guacamole.', price: 6.50, category: 'Starter', restaurant: el_taco)
Nachos = Dish.create(name: 'Nachos com Carne de Porco Preto', description: 'Traditional mexican snack cooked with melted cheese and black pork.', price: 8.50, category: 'Starter', restaurant: el_taco)
Quesadilla = Dish.create(name: 'Quesadilla Normal', description: 'Corn tortilla, filled with melted cheese accompanied with fresh queso.', price: 4.90, category: 'Starter', restaurant: el_taco)
Tinga = Dish.create(name: 'Quesadillas com Tinga de Pollo', description: 'Corn tortillas filled with melted cheese, with tinga de pollo.', price: 8.50, category: 'Starter', restaurant: el_taco)
Pollo = Dish.create(name: 'Quesadillas com Pollo Verde', description: 'Corn tortillas filled with melted cheese, with pollo verde.', price: 8.50, category: 'Starter', restaurant: el_taco)
Ceviche = Dish.create(name: 'Ceviche', description: 'Fresh salmon cured in citrus juice, spiced with tomato, onion and cilantro.', price: 8.50, category: 'Starter', restaurant: el_taco)

# sopas
Gazpacho = Dish.create(name: 'Gazpacho', description: 'Cold soup accompanised with cucumber bell pepper tomato & basil.', price: 7.90, category: 'Sopa', restaurant: el_taco)

# saladas
Mixed = Dish.create(name: 'Mixed Salad', description: 'Grilled sliced of roast beef mixed with fresh herbs, olives, cherry tomato, bell pepper garnished with red/white pickled onion.', price: 9.50, category: 'Salada', restaurant: el_taco)
Special = Dish.create(name: 'El Tacos Mexican Special Salad', description: 'Dicely chopped fresh avocado, pepper cherry tomato olives feta cheese and corn garnished with chipotle.', price: 9.50, category: 'Salada', restaurant: el_taco)

# tacos
Tacos = Dish.create(name: 'Tacos Tinga de Pollo', description: 'Braised chicken stewed and cooked with boiled tomato along with cumin and chile chipotle', price: 11.90, category: 'Taco', restaurant: el_taco)
Camaron = Dish.create(name: 'Tacos de Camaron', description: 'Sauted shrimp in cilantro ,garlic and lime served with cabbage and chipotle mayonnaise', price: 10.90, category: 'Taco', restaurant: el_taco)
Enchilida = Dish.create(name: 'Enchilida Suiza', description: 'Grilled chicken wrapped and topped with melted cheese served with letuce and red pickled onion.', price: 11.90, category: 'Taco', restaurant: el_taco)
Carnitas = Dish.create(name: 'Tacos de Carnitas', description: 'Marinated roasted pork slowly cooked and caramelized with orange and garlic.', price: 11.90, category: 'Taco', restaurant: el_taco)
Cochinita = Dish.create(name: 'Tacos e Cochinita Pibil', description: 'Pork slowly roasted in a banana leaf with achiote,lime and orange juice topped with red pickled onion.', price: 10.90, category: 'Taco', restaurant: el_taco)
Salsa = Dish.create(name: 'Tacos com Pollo em Salsa Verde', description: 'Braised chicken stewed and cooked with salsa verde.', price: 11.90, category: 'Taco', restaurant: el_taco)
Assada = Dish.create(name: 'Tacos com Carne Assada', description: 'Grilled vazia with grilled onion served with guacamole ,cilantro onion & lime', price: 14.90, category: 'Taco', restaurant: el_taco)
# Dish.create(name: '', description: '', price: '', category: '', restaurant: el_taco)
# Dish.create(name: '', description: '', price: '', category: '', restaurant: el_taco)
# Dish.create(name: '', description: '', price: '', category: '', restaurant: el_taco)
# Dish.create(name: '', description: '', price: '', category: '', restaurant: el_taco)
# Dish.create(name: '', description: '', price: '', category: '', restaurant: el_taco)
# Dish.create(name: '', description: '', price: '', category: '', restaurant: el_taco)
puts "#{Dish.count} #{Dish.name} created successfully"

# tab_params = {
#   hash: ,
#   status: :open,
#   restaurant: el_taco
# }

Tab.create!(total: 102, status: :open, table_number: 2, restaurant: el_taco)
Tab.create!(total: 101, status: :open, table_number: 1, restaurant: el_taco)
Tab.create!(total: 103, status: :open, table_number: 3, restaurant: el_taco)
Tab.create!(total: 104, status: :open, table_number: 4, restaurant: el_taco)
Tab.create!(total: 105, status: :open, table_number: 5, restaurant: el_taco)
Tab.create!(total: 106, status: :open, table_number: 6, restaurant: el_taco)
Tab.create!(total: 107, status: :open, table_number: 7, restaurant: el_taco)

puts "#{Tab.count} #{Tab.name} created successfully"

dishes = Dish.all
tabs = Tab.all

tabs.each do
  TabDish.create(tab: tabs.sample, dish: dishes.sample)
end
