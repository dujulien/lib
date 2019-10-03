def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages souhaites-tu qu'elle ait (choisir un nombre entre 1 et 25)?"
	print ">"

	etage = gets.chomp.to_i
	while etage <1 || etage >25
		puts "Le nombre d'étage doit être compris entre 1 et 25. Nombre d'étages ? "
		etage = gets.chomp.to_i
	end

	layer = ""
	etage.times do 
		layer = layer + "#"
		pyramide << layer
	end	

puts "Voici la pyramide :"
puts pyramide