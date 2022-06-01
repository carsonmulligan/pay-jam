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
Guacamole = Dish.create(name: 'Guacamole com Totopas', description: 'Traditional mexican snack with hamdmade guacamole.', price: 6.50, category: 'Starters', restaurant: el_taco)
Nachos = Dish.create(name: 'Nachos com Carne de Porco Preto', description: 'Traditional mexican snack cooked with melted cheese and black pork.', price: 8.50, category: 'Starters', restaurant: el_taco)
Quesadilla = Dish.create(name: 'Quesadilla Normal', description: 'Corn tortilla, filled with melted cheese accompanied with fresh queso.', price: 4.90, category: 'Starters', restaurant: el_taco)
Tinga = Dish.create(name: 'Quesadillas com Tinga de Pollo', description: 'Corn tortillas filled with melted cheese, with tinga de pollo.', price: 8.50, category: 'Starters', restaurant: el_taco)
Pollo = Dish.create(name: 'Quesadillas com Pollo Verde', description: 'Corn tortillas filled with melted cheese, with pollo verde.', price: 8.50, category: 'Starters', restaurant: el_taco)
Ceviche = Dish.create(name: 'Ceviche', description: 'Fresh salmon cured in citrus juice, spiced with tomato, onion and cilantro.', price: 8.50, category: 'Starters', restaurant: el_taco)

# sopas
Gazpacho = Dish.create(name: 'Gazpacho', description: 'Cold soup accompanised with cucumber bell pepper tomato & basil.', price: 7.90, category: 'Sopas', restaurant: el_taco)

# saladas
Mixed = Dish.create(name: 'Mixed Salad', description: 'Grilled sliced of roast beef mixed with fresh herbs, olives, cherry tomato, bell pepper garnished with red/white pickled onion.', price: 9.50, category: 'Saladas', restaurant: el_taco)
Special = Dish.create(name: 'El Tacos Mexican Special Salad', description: 'Dicely chopped fresh avocado, pepper cherry tomato olives feta cheese and corn garnished with chipotle.', price: 9.50, category: 'Saladas', restaurant: el_taco)

# tacos
Tacos = Dish.create(name: 'Tacos Tinga de Pollo', description: 'Braised chicken stewed and cooked with boiled tomato along with cumin and chile chipotle', price: 11.90, category: 'Tacos', restaurant: el_taco)
Camaron = Dish.create(name: 'Tacos de Camaron', description: 'Sauted shrimp in cilantro ,garlic and lime served with cabbage and chipotle mayonnaise', price: 10.90, category: 'Tacos', restaurant: el_taco)
Enchilida = Dish.create(name: 'Enchilida Suiza', description: 'Grilled chicken wrapped and topped with melted cheese served with letuce and red pickled onion.', price: 11.90, category: 'Tacos', restaurant: el_taco)
Carnitas = Dish.create(name: 'Tacos de Carnitas', description: 'Marinated roasted pork slowly cooked and caramelized with orange and garlic.', price: 11.90, category: 'Tacos', restaurant: el_taco)
Cochinita = Dish.create(name: 'Tacos e Cochinita Pibil', description: 'Pork slowly roasted in a banana leaf with achiote,lime and orange juice topped with red pickled onion.', price: 10.90, category: 'Tacos', restaurant: el_taco)
Salsa = Dish.create(name: 'Tacos com Pollo em Salsa Verde', description: 'Braised chicken stewed and cooked with salsa verde.', price: 11.90, category: 'Tacos', restaurant: el_taco)
Assada = Dish.create(name: 'Tacos com Carne Assada', description: 'Grilled vazia with grilled onion served with guacamole ,cilantro onion & lime', price: 14.90, category: 'Tacos', restaurant: el_taco)
Dish.create(name: 'Tacos de Carne Assada com Salsa Seca', description: 'Thick slice of tenderloin grilled and served with grind mixture of fried garlic & chile arbol.', price: 10.90, category: 'Tacos', restaurant: el_taco)
Dish.create(name: 'Fajita', description: 'Grilled meat, bell pepper served as a taco on corn tortilla with lime, avocado and sour crème.', price: 10.90, category: 'Tacos', restaurant: el_taco)

# vegetarian specials
Dish.create(name: 'Feijão Preto', description: 'Refried black beans serves with fresh queso and salsa mayonnaise chipotle.', price: 9.90, category: 'Vegetarian Specials', restaurant: el_taco)
Dish.create(name: 'Hongos al Ajillo', description: 'Mushrooms with chilli guagillo flavoured with fried garlic.', price: 10.00, category: 'Vegetarian Specials', restaurant: el_taco)

# burritos
Dish.create(name: 'Burritos com Frango Assado', description: 'Grilled chicken wrapped in traditional mexican handmade tortilla with refried beans and queso.', price: 10.50, category: 'Burritos', restaurant: el_taco)
Dish.create(name: 'Burritos com Vazia', description: 'Grilled vazia de novilho wrapped in traditional Mexican homemade tortilla with refried beans and queso.', price: 11.90, category: 'Burritos', restaurant: el_taco)

# drinks
Dish.create(name: 'Corona Extra', description: 'Mexican beer 4.5% vol.', price: 3.85, category: 'Drinks', restaurant: el_taco)
Dish.create(name: 'Modelo Especial', description: 'Mexican beer alc 4.5 % , 35.5 cl.', price: 4.10, category: 'Drinks', restaurant: el_taco)
Dish.create(name: 'Somersby', description: 'Apple sparkling Cider alc. 4.5 % vol. 33cl.', price: 3.85, category: 'Drinks', restaurant: el_taco)
Dish.create(name: 'Pacifico Clara', description: 'Mexican beer. alc. 4.5 % vol..35.5 cl.', price: 4.10, category: 'Drinks', restaurant: el_taco)
Dish.create(name: 'Desperados', description: 'Beer flavoured with Tequla alc. 5.9 % vol 33cl.', price: 4.10, category: 'Drinks', restaurant: el_taco)
Dish.create(name: 'Sagres', description: 'Portuguese beer with alc 5.0 % vol 33cl.', price: 3.00, category: 'Drinks', restaurant: el_taco)
Dish.create(name: 'Caipirinha', description: ' Classic Brazilian drink.', price: 3.00, category: 'Drinks', restaurant: el_taco)
Dish.create(name: 'Caipirinha com Maracuja', description: ' Classic Brazilian drink.', price: 3.00, category: 'Drinks', restaurant: el_taco)


# desserts
Dish.create(name: 'Churros', description: 'Sweet Mexican dessert with brown sugar and chocalate sauce', price: 3.90, category: 'desserts', restaurant: el_taco)

puts "#{Dish.count} #{Dish.name} created successfully"

# tab_params = {
#   hash: ,
#   status: :open,
#   restaurant: el_taco
# }

Tab.create!(total: 101, status: :open, table_number: 1, restaurant: el_taco)
Tab.create!(total: 102, status: :open, table_number: 2, restaurant: el_taco)
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
