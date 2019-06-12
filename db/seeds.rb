puts "Cleaning Personnages"
Personnage.destroy_all

puts "Creating Personnages"

personnages = [
  { nom: "Mario", photo_url: 'https://vignette.wikia.nocookie.net/supersmashbrosfanon/images/7/71/MarioSSBU.png/revision/latest?cb=20120511134657'},
  { nom: "Link", photo_url: 'https://vignette.wikia.nocookie.net/ssb/images/8/8b/Link_-_Super_Smash_Bros._Brawl.png/revision/latest/scale-to-width-down/350?cb=20160118005104'},
  { nom: "Pikachu", photo_url: 'https://www.stickpng.com/assets/images/580b57fcd9996e24bc43c325.png'},
  { nom: "Sonic", photo_url: 'http://info.sonicretro.org/images/c/c0/ASR_Sonic.png'},
  { nom: "Kirby", photo_url: 'https://upload.wikimedia.org/wikipedia/sco/5/5c/Kirby.png'},
  { nom: "Donkey Kong", photo_url: 'https://www.mariowiki.com/images/thumb/b/b5/SuperMarioParty_DonkeyKong.png/1200px-SuperMarioParty_DonkeyKong.png'},
  ]

personnages.each do |perso|
  vie = (20..100).to_a.sample
  attaque = (30..60).to_a.sample
  new_personnage = Personnage.new(
    nom:       perso[:nom],
    vie:       vie,
    attaque:   attaque,
  )
  new_personnage.remote_photo_url = perso[:photo_url]
  new_personnage.save!
end

puts "Finished"
