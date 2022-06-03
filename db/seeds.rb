require 'open-uri'

Bill.destroy_all
Dish.destroy_all
TabDish.destroy_all
Tab.destroy_all
Restaurant.destroy_all
User.destroy_all

user1 = User.create(email: 'carlos.miguel@gmail.com', password: '121212')
puts "#{User.count} #{User.name} created successfully"

el_taco = Restaurant.create(name: 'El Taco Mexican & Cocktails Bar', address: 'Rua do Diaro de Noticias 23, Lisbon, Portugal', user: user1)
puts "#{Restaurant.count} #{Restaurant.name} created successfully"

# starters

guacamole = Dish.create(name: 'Guacamole com Totopas', description: 'Traditional mexican snack with hamdmade guacamole.', price_cents: 650, category: 'Starters', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093051/PRATOS/gacuamoletotopos-removebg-preview_xjg948.png')
guacamole.photo.attach(io: file, filename: "#{guacamole.name}.png", content_type: 'image/png')


nachos = Dish.create(name: 'Nachos com Carne de Porco Preto', description: 'Traditional mexican snack cooked with melted cheese and black pork.', price_cents: 850, category: 'Starters', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093050/PRATOS/nachoscomporcopreto_nga0uw.png')
nachos.photo.attach(io: file, filename: "#{nachos.name}.png", content_type: 'image/png')


quesadilla = Dish.create(name: 'Quesadilla Normal', description: 'Corn tortilla, filled with melted cheese accompanied with fresh queso.', price_cents: 490, category: 'Starters', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093050/PRATOS/quesadilha_nprio7.png')
quesadilla.photo.attach(io: file, filename: "#{quesadilla.name}.png", content_type: 'image/png')


tinga = Dish.create(name: 'Quesadillas com Tinga de Pollo', description: 'Corn tortillas filled with melted cheese, with tinga de pollo.', price_cents: 850, category: 'Starters', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093050/PRATOS/quesadilha_nprio7.png')
tinga.photo.attach(io: file, filename: "#{tinga.name}.png", content_type: 'image/png')

pollo = Dish.create(name: 'Quesadillas com Pollo Verde', description: 'Corn tortillas filled with melted cheese, with pollo verde.', price_cents: 850, category: 'Starters', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093050/PRATOS/quesadilha_nprio7.png')
pollo.photo.attach(io: file, filename: "#{pollo.name}.png", content_type: 'image/png')

ceviche = Dish.create(name: 'Ceviche', description: 'Fresh salmon cured in citrus juice, spiced with tomato, onion and cilantro.', price_cents: 850, category: 'Starters', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093051/PRATOS/ceviche_lt0jzm.png')
ceviche.photo.attach(io: file, filename: "#{ceviche.name}.png", content_type: 'image/png')


# sopas
gazpacho = Dish.create(name: 'Gazpacho', description: 'Cold soup accompanised with cucumber bell pepper tomato & basil.', price_cents: 790, category: 'Sopas', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093051/PRATOS/gazpacho_oz0tp5.png')
gazpacho.photo.attach(io: file, filename: "#{gazpacho.name}.png", content_type: 'image/png')


# saladas
mixed = Dish.create(name: 'Mixed Salad', description: 'Grilled sliced of roast beef mixed with fresh herbs, olives, cherry tomato, bell pepper garnished with red/white pickled onion.', price_cents: 950, category: 'Saladas', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093050/PRATOS/mixedsalad_adehtf.png')
mixed.photo.attach(io: file, filename: "#{mixed.name}.png", content_type: 'image/png')


special = Dish.create(name: 'El Tacos Mexican Special Salad', description: 'Dicely chopped fresh avocado, pepper cherry tomato olives feta cheese and corn garnished with chipotle.', price_cents: 950, category: 'Saladas', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093050/PRATOS/mexicansalad_sf85to.png')
special.photo.attach(io: file, filename: "#{special.name}.png", content_type: 'image/png')


# tacos
tacos = Dish.create(name: 'Tacos Tinga de Pollo', description: 'Braised chicken stewed and cooked with boiled tomato along with cumin and chile chipotle', price_cents: 1190, category: 'Tacos', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093050/PRATOS/tacospollo_vhnusy.png')
tacos.photo.attach(io: file, filename: "#{tacos.name}.png", content_type: 'image/png')


camaron = Dish.create(name: 'Tacos de Camaron', description: 'Sauted shrimp in cilantro ,garlic and lime served with cabbage and chipotle mayonnaise', price_cents: 1090, category: 'Tacos', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093050/PRATOS/tacoscamaro_s02zcm.png')
camaron.photo.attach(io: file, filename: "#{camaron.name}.png", content_type: 'image/png')


enchilida = Dish.create(name: 'Enchilida Suiza', description: 'Grilled chicken wrapped and topped with melted cheese served with letuce and red pickled onion.', price_cents: 1190, category: 'Tacos', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654094200/PRATOS/enchiladassuizas-removebg-preview_chizeo.png')
enchilida.photo.attach(io: file, filename: "#{enchilida.name}.png", content_type: 'image/png')

carnitas = Dish.create(name: 'Tacos de Carnitas', description: 'Marinated roasted pork slowly cooked and caramelized with orange and garlic.', price_cents: 1190, category: 'Tacos', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093050/PRATOS/tacospollo_vhnusy.png')
carnitas.photo.attach(io: file, filename: "#{carnitas.name}.png", content_type: 'image/png')

cochinita = Dish.create(name: 'Tacos e Cochinita Pibil', description: 'Pork slowly roasted in a banana leaf with achiote,lime and orange juice topped with red pickled onion.', price_cents: 1090, category: 'Tacos', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093425/PRATOS/cochinita-removebg-preview_a2o9hk.png')
cochinita.photo.attach(io: file, filename: "#{cochinita.name}.png", content_type: 'image/png')

salsa = Dish.create(name: 'Tacos com Pollo em Salsa Verde', description: 'Braised chicken stewed and cooked with salsa verde.', price_cents: 1190, category: 'Tacos', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093050/PRATOS/tacospollo_vhnusy.png')
salsa.photo.attach(io: file, filename: "#{salsa.name}.png", content_type: 'image/png')

assada = Dish.create(name: 'Tacos com Carne Assada', description: 'Grilled vazia with grilled onion served with guacamole ,cilantro onion & lime', price_cents: 1490, category: 'Tacos', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093050/PRATOS/nachoscomporcopreto_nga0uw.png')
assada.photo.attach(io: file, filename: "#{assada.name}.png", content_type: 'image/png')


seca = Dish.create(name: 'Tacos de Carne Assada com Salsa Seca', description: 'Thick slice of tenderloin grilled and served with grind mixture of fried garlic & chile arbol.', price_cents: 1090, category: 'Tacos', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654093050/PRATOS/tacospollo_vhnusy.png')
seca.photo.attach(io: file, filename: "#{seca.name}.png", content_type: 'image/png')


fajita = Dish.create(name: 'Fajita', description: 'Grilled meat, bell pepper served as a taco on corn tortilla with lime, avocado and sour crème.', price_cents: 1090, category: 'Tacos', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654094261/PRATOS/Fajitas_de_carne_600-removebg-preview_bentpk.png')
fajita.photo.attach(io: file, filename: "#{fajita.name}.png", content_type: 'image/png')



# vegetarian specials
preto = Dish.create(name: 'Feijão Preto', description: 'Refried black beans serves with fresh queso and salsa mayonnaise chipotle.', price_cents: 990, category: 'Vegetarian Specials', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654094357/PRATOS/feijaopreto-removebg-preview_mf8ilz.png')
preto.photo.attach(io: file, filename: "#{preto.name}.png", content_type: 'image/png')


hongos = Dish.create(name: 'Hongos al Ajillo', description: 'Mushrooms with chilli guagillo flavoured with fried garlic.', price_cents: 1000, category: 'Vegetarian Specials', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654094718/PRATOS/Hongosalajillo_lr1bmw.png')
hongos.photo.attach(io: file, filename: "#{hongos.name}.png", content_type: 'image/png')



# burritos
frango = Dish.create(name: 'Burritos com Frango Assado', description: 'Grilled chicken wrapped in traditional mexican handmade tortilla with refried beans and queso.', price_cents: 1050, category: 'Burritos', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654095392/PRATOS/burritos2_ufipvb.png')
frango.photo.attach(io: file, filename: "#{frango.name}.png", content_type: 'image/png')


vazia = Dish.create(name: 'Burritos com Vazia', description: 'Grilled vazia de novilho wrapped in traditional Mexican homemade tortilla with refried beans and queso.', price_cents: 1190, category: 'Burritos', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654095392/PRATOS/burritos_cceycg.png')
vazia.photo.attach(io: file, filename: "#{vazia.name}.png", content_type: 'image/png')



# drinks
corona = Dish.create(name: 'Corona Extra', description: 'Mexican beer 4.5% vol.', price_cents: 385, category: 'Drinks', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654097571/PRATOS/coronaextr_cgj2or.png')
corona.photo.attach(io: file, filename: "#{corona.name}.png", content_type: 'image/png')


modelo = Dish.create(name: 'Modelo Especial', description: 'Mexican beer alc 4.5 % , 35.5 cl.', price_cents: 410, category: 'Drinks', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654097571/PRATOS/modelo_ms86sj.png')
modelo.photo.attach(io: file, filename: "#{modelo.name}.png", content_type: 'image/png')


somersby = Dish.create(name: 'Somersby', description: 'Apple sparkling Cider alc. 4.5 % vol. 33cl.', price_cents: 385, category: 'Drinks', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654097571/PRATOS/somersbdyavyd_uojvlm.png')
somersby.photo.attach(io: file, filename: "#{somersby.name}.png", content_type: 'image/png')


clara = Dish.create(name: 'Pacifico Clara', description: 'Mexican beer. alc. 4.5 % vol..35.5 cl.', price_cents: 410, category: 'Drinks', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654097571/PRATOS/pacificoclara_wv9tnc.png')
clara.photo.attach(io: file, filename: "#{clara.name}.png", content_type: 'image/png')


desperados = Dish.create(name: 'Desperados', description: 'Beer flavoured with Tequla alc. 5.9 % vol 33cl.', price_cents: 410, category: 'Drinks', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654097571/PRATOS/desperados_ulchgv.png')
desperados.photo.attach(io: file, filename: "#{desperados.name}.png", content_type: 'image/png')

sagres = Dish.create(name: 'Sagres', description: 'Portuguese beer with alc 5.0 % vol 33cl.', price_cents: 300, category: 'Drinks', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654095999/PRATOS/sagres_xhraii.png')
sagres.photo.attach(io: file, filename: "#{sagres.name}.png", content_type: 'image/png')

caipi = Dish.create(name: 'Caipirinha', description: ' Classic Brazilian drink.', price_cents: 300, category: 'Drinks', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654095712/PRATOS/caipirinha_xajaha.png')
caipi.photo.attach(io: file, filename: "#{caipi.name}.png", content_type: 'image/png')

maracuja = Dish.create(name: 'Caipirinha com Maracuja', description: ' Classic Brazilian drink.', price_cents: 300, category: 'Drinks', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654095712/PRATOS/caipirinhamaracuja_grrcvf.png')
maracuja.photo.attach(io: file, filename: "#{maracuja.name}.png", content_type: 'image/png')

# desserts
churros = Dish.create(name: 'Churros', description: 'Sweet Mexican dessert with brown sugar and chocalate sauce', price_cents: 390, category: 'desserts', restaurant: el_taco)
file = URI.open('https://res.cloudinary.com/didajvmh1/image/upload/v1654095781/PRATOS/churros_jjzd67.png')
churros.photo.attach(io: file, filename: "#{churros.name}.png", content_type: 'image/png')


puts "#{Dish.count} #{Dish.name} created successfully"

# tab_params = {
#   hash: ,
#   status: :open,
#   restaurant: el_taco
# }

Tab.create!(total_cents: 0, status: :open, table_number: 1, restaurant: el_taco)
Tab.create!(total_cents: 0, status: :open, table_number: 2, restaurant: el_taco)
Tab.create!(total_cents: 0, status: :open, table_number: 3, restaurant: el_taco)
Tab.create!(total_cents: 0, status: :open, table_number: 4, restaurant: el_taco)
Tab.create!(total_cents: 0, status: :open, table_number: 5, restaurant: el_taco)
Tab.create!(total_cents: 0, status: :open, table_number: 6, restaurant: el_taco)
Tab.create!(total_cents: 0, status: :open, table_number: 7, restaurant: el_taco)

puts "#{Tab.count} #{Tab.name} created successfully"

dishes = Dish.all
tabs = Tab.all

# tabs.each do
#   TabDish.create(tab: tabs.sample, dish: dishes.sample)
# end
