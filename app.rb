			# Lancement du Projet #

require 'colorize'
require_relative 'lib/dofus'

puts "	    ***    **  ***** *   *  ****
	    *  *  *  * *     *   * *
	    *   * *  * ***   *   *  ***
	    *  *  *  * *     *   *     *
	    ***    **  *      ***  ****  ".colorize(:yellow)


# On execute la classe Larves
larves = Larves.new
larves.larves_json
puts "Nom d'un Tofu, les Larves ont infesté les fichiers"
puts " "

# On execute la classe Monstres des Carvernes
monstres1 = Monstres_des_cavernes.new
monstres1.cave_monsters_json
puts "Par Grougaloragran, voilà les Monstres des Cavernes "
puts " "

# On execute la classe Monstres des Plaines
monstre2 = Monstres_des_plaines.new
monstre2.herb_plain_monsters_json
puts "C'est une technique Eliatrope je suppose! Les Monstres des Plaines ont aussi infesté les fichiers "
puts ""

puts "     LE MONDE DES DOUZES EST LOUE ".colorize(:red)
puts " "
puts " "
puts " "
puts " Les fichiers API ont été bien intégrés au JSON ".colorize(:red)
puts " "
puts "		      ****** 	 
		    ********** 
		   ************ 
	          ************* 
	         *************** 
	        ***************** 
	       ******************* 
	       ******************* 
	       ******************* 
	        *****************  
	          *************           
	             ******* ".colorize(:green)

