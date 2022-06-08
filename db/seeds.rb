require 'open-uri'

Category.destroy_all
Bill.destroy_all
Dish.destroy_all
TabDish.destroy_all
Tab.destroy_all
Restaurant.destroy_all
User.destroy_all

user1 = User.create(email: 'carlos.miguel@gmail.com', password: '121212')
puts "User created successfully"

el_taco = Restaurant.create(name: 'El Taco Mexican & Cocktails Bar', address: 'Rua do Diaro de Noticias 23, Lisbon, Portugal', user: user1)
puts "#{el_taco.name} restaurant created successfully"

# Categories
categories = ["Starters", "Sopas", "Saladas", "Tacos", "Burritos", "Vegetarian Specials", "Desserts", "Drinks"]

categories.each_with_index do |category, index|
  Category.create(name: category, order: index)

  puts "#{category} category created successfully"
end

starters_category = Category.find_by(name: "Starters")
sopas_category = Category.find_by(name: "Sopas")
salads_category = Category.find_by(name: "Saladas")
tacos_category = Category.find_by(name: "Tacos")
vegetarian_category = Category.find_by(name: "Vegetarian Specials")
burritos_category = Category.find_by(name: "Burritos")
drinks_category = Category.find_by(name: "Drinks")
desserts_category = Category.find_by(name: "Desserts")

# Dishes

dishes = [
  {
    name: 'Guacamole com Totopas',
    description: 'Traditional mexican snack with hamdmade guacamole.',
    price_cents: 650,
    category: starters_category
  },
  {
    name: 'Nachos com Carne de Porco Preto',
    description: 'Traditional mexican snack cooked with melted cheese and black pork.',
    price_cents: 850,
    category: starters_category
  },
  {
    name: 'Quesadilla Normal',
    description: 'Corn tortilla, filled with melted cheese accompanied with fresh queso.',
    price_cents: 490,
    category: starters_category
  },
  {
    name: 'Quesadillas com Tinga de Pollo',
    description: 'Corn tortillas filled with melted cheese, with tinga de pollo.',
    price_cents: 850,
    category: starters_category
  },
  {
    name: 'Quesadillas com Pollo Verde',
    description: 'Corn tortillas filled with melted cheese, with pollo verde.',
    price_cents: 850,
    category: starters_category
  },
  {
    name: 'Ceviche',
    description: 'Fresh salmon cured in citrus juice, spiced with tomato, onion and cilantro.',
    price_cents: 850,
    category: starters_category
  },
  {
    name: 'Gazpacho',
    description: 'Cold soup accompanised with cucumber bell pepper tomato & basil.',
    price_cents: 790,
    category: sopas_category
  },
  {
    name: 'Mixed Salad',
    description: 'Grilled sliced of roast beef mixed with fresh herbs, olives, cherry tomato, bell pepper garnished with red/white pickled onion.',
    price_cents: 950,
    category: salads_category
  },
  {
    name: 'El Tacos Mexican Special Salad',
    description: 'Dicely chopped fresh avocado, pepper cherry tomato olives feta cheese and corn garnished with chipotle.',
    price_cents: 950,
    category: salads_category
  },
  {
    name: 'Tacos Tinga de Pollo',
    description: 'Braised chicken stewed and cooked with boiled tomato along with cumin and chile chipotle',
    price_cents: 1190,
    category: tacos_category
  },
  {
    name: 'Tacos de Camaron',
    description: 'Sauted shrimp in cilantro ,garlic and lime served with cabbage and chipotle mayonnaise',
    price_cents: 1090,
    category: tacos_category
  },
  {
    name: 'Enchilida Suiza',
    description: 'Grilled chicken wrapped and topped with melted cheese served with letuce and red pickled onion.',
    price_cents: 1190,
    category: tacos_category
  },
  {
    name: 'Tacos de Carnitas',
    description: 'Marinated roasted pork slowly cooked and caramelized with orange and garlic.',
    price_cents: 1190,
    category: tacos_category
  },
  {
    name: 'Tacos e Cochinita Pibil',
    description: 'Pork slowly roasted in a banana leaf with achiote,lime and orange juice topped with red pickled onion.',
    price_cents: 1090,
    category: tacos_category
  },
  {
    name: 'Tacos com Pollo em Salsa Verde',
    description: 'Braised chicken stewed and cooked with salsa verde.',
    price_cents: 1190,
    category: tacos_category
  },
  {
    name: 'Tacos com Carne Assada',
    description: 'Grilled vazia with grilled onion served with guacamole ,cilantro onion & lime',
    price_cents: 1490,
    category: tacos_category
  },
  {
    name: 'Tacos de Carne Assada com Salsa Seca',
    description: 'Thick slice of tenderloin grilled and served with grind mixture of fried garlic & chile arbol.',
    price_cents: 1090,
    category: tacos_category
  },
  {
    name: 'Fajita',
    description: 'Grilled meat, bell pepper served as a taco on corn tortilla with lime, avocado and sour crème.',
    price_cents: 1090,
    category: tacos_category
  },
  {
    name: 'Feijão Preto',
    description: 'Refried black beans serves with fresh queso and salsa mayonnaise chipotle.',
    price_cents: 990,
    category: vegetarian_category
  },
  {
    name: 'Hongos al Ajillo',
    description: 'Mushrooms with chilli guagillo flavoured with fried garlic.',
    price_cents: 1000,
    category: vegetarian_category
  },
  {
    name: 'Burritos com Frango Assado',
    description: 'Grilled chicken wrapped in traditional mexican handmade tortilla with refried beans and queso.',
    price_cents: 1050,
    category: burritos_category
  },
  {
    name: 'Burritos com Vazia',
    description: 'Grilled vazia de novilho wrapped in traditional Mexican homemade tortilla with refried beans and queso.',
    price_cents: 1190,
    category: burritos_category
  },
  {
    name: 'Corona Extra',
    description: 'Mexican beer 4.5% vol.',
    price_cents: 385,
    category: drinks_category
  },
  {
    name: 'Modelo Especial',
    description: 'Mexican beer alc 4.5 % , 35.5 cl.',
    price_cents: 410,
    category: drinks_category
  },
  {
    name: 'Somersby',
    description: 'Apple sparkling Cider alc. 4.5 % vol. 33cl.',
    price_cents: 385,
    category: drinks_category
  },
  {
    name: 'Pacifico Clara',
    description: 'Mexican beer. alc. 4.5 % vol..35.5 cl.',
    price_cents: 410,
    category: drinks_category
  },
  {
    name: 'Desperados',
    description: 'Beer flavoured with Tequla alc. 5.9 % vol 33cl.',
    price_cents: 410,
    category: drinks_category
  },
  {
    name: 'Sagres',
    description: 'Portuguese beer with alc 5.0 % vol 33cl.',
    price_cents: 300,
    category: drinks_category
  },
  {
    name: 'Caipirinha',
    description: ' Classic Brazilian drink.',
    price_cents: 300,
    category: drinks_category
  },
  {
    name: 'Caipirinha com Maracuja',
    description: ' Classic Brazilian drink.',
    price_cents: 300,
    category: drinks_category
  },
  {
    name: 'Churros',
    description: 'Sweet Mexican dessert with brown sugar and chocalate sauce',
    price_cents: 390,
    category: desserts_category
  },
]

dishes.each do |dish|
  Dish.create!(
    name: dish[:name],
    description: dish[:description],
    price_cents: dish[:price_cents],
    category_id: dish[:category].id,
    restaurant: el_taco
  )

  puts "#{dish[:name]} - dish created successfully"
end

7.times do |n|
  Tab.create!(
    total_cents: 0,
    status: [:open, :closed].sample,
    table_number: n + 1,
    restaurant: el_taco
  )

  puts "Tab #{n + 1} created successfully"
end
