def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages souhaites-tu qu'elle ait (choisir un nombre entre 1 et 25)?"
	print ">"

	etage = gets.chomp.to_i
	while etage <1 || etage >25
		puts "Le nombre d'étage doit être compris entre 1 et 25. Nombre d'étages ? "
		etage = gets.chomp.to_i
	end
	
	half_pyr = []
	layer = ""
	etage.times do 
		layer = layer + "#"
		half_pyr << layer
	end	
puts "Voici la pyramide :"
puts pyramide
end 


def full_pyramid (etage)
	#puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages souhaites-tu qu'elle ait ?"
	#print ">"

	#etage = gets.chomp.to_i
	#while etage <1 || etage >25
	#	puts "Le nombre d'étage doit être compris entre 1 et 25. Nombre d'étages ? "
	#	etage = gets.chomp.to_i
	#end

	pyramid = []
	etage.times do |i|
		space = (" " * (etage-(i+1)))
		hashtg = ("#" * (2*(i+1)-1))	
		a = (space + hashtg)
		pyramid << a
	end
	pyramid
end

def wtf_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages souhaites-tu qu'elle ait (le nombre d'étage doit être impair !) ?"
	print ">"
	full_etage = gets.chomp.to_i
	#if full_etage.even?
		#etage = full_etage/2
		#puts full_pyramid(etage)
		#puts full_pyramid(etage).reverse#
	#else
	while full_etage.even?
		puts "Le nombre d'étages doit être impair ! Saisis un nombre impair stp :"
		print ">"
		full_etage = gets.chomp.to_i
	end
		etage = (full_etage+1) / 2
		puts "Voici la pyramide :"
		puts full_pyramid(etage)
		puts full_pyramid(etage).reverse.reject.with_index{|_,i| i==0}
end

wtf_pyramid


