puts "Cleaning Personnages"
Personnage.destroy_all

puts "Creating Personnages"

puts "Creating Mario"
mario = Personnage.new
mario.nom = "Mario"
mario.vie = (20..100).to_a.sample
mario.attaque = (30..60).to_a.sample
mario.save!
puts "Mario created"

puts "Creating Link"
link = Personnage.new
link.nom = "Link"
link.vie = (20..100).to_a.sample
link.attaque = (30..60).to_a.sample
link.save!
puts "Link created"

puts "Creating Pikachu"
pickachu = Personnage.new
pickachu.nom = "Pikachu"
pickachu.vie = (20..100).to_a.sample
pickachu.attaque = (30..60).to_a.sample
pickachu.save!
puts "Pikachu created"

puts "Creating Sonic"
sonic = Personnage.new
sonic.nom = "Sonic"
sonic.vie = (20..100).to_a.sample
sonic.attaque = (30..60).to_a.sample
sonic.save!
puts "Sonic created"

puts "Creating Kirby"
kirby = Personnage.new
kirby.nom = "Kirby"
kirby.vie = (20..100).to_a.sample
kirby.attaque = (30..60).to_a.sample
kirby.save!
puts "Kirby created"

puts "Creating Donkey Kong"
donkey_kong = Personnage.new
donkey_kong.nom = "Donkey Kong"
donkey_kong.vie = (20..100).to_a.sample
donkey_kong.attaque = (30..60).to_a.sample
donkey_kong.save!
puts "Donkey Kong created"

puts "Finished"
