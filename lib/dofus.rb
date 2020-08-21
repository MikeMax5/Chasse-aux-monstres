			# API DOFUS #

require 'bundler'

Bundler.require

class Larves
  def initialize
  
    
    # On va récupérer les APIs en filtrant l'intégralité des ressources pour prendre ce qu'on doit montrer
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Larves')
  end

  # Ouverture et écriture dans le fichier JSON
  def larves_json
    File.open("./db/larves.json", 'w') do |file|	# On oriente l'objet vers la variable pour la classe
      file.write(@type)				# Ecriture dans le fichier Json
    end
  end
end


class Monstres_des_cavernes
  def initialize
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des cavernes')
  end

  def cave_monsters_json				
    File.open("./db/cavemonsters.json", 'w') do |file|# On oriente l'objet vers la variable pour la classe
      file.write(@type)				# Ecriture dans le fichier Json
    end	
  end
end

class Monstres_des_plaines
  def initialize
    @type = HTTParty.get('https://fr.dofus.dofapi.fr/monsters?filter[where][type]=Monstres des Plaines herbeuses')
  end

  def herb_plain_monsters_json
    File.open("./db/herbplainmonsters.json", 'w') do |file|	# On oriente l'objet vers la variable pour la classe
      file.write(@type)					# Ecriture dans le fichier Json
    end
  end
end
