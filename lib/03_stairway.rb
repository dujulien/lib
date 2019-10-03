def stairway_game
	niveau = 0
	compteur = 0
	while niveau < 10
		lancee = rand(1..6)
		puts "Vous avez fait #{lancee}"
		if lancee == 1 
			puts "Vous descendez d'une marche!"
			if niveau == 0
				niveau = 0
			else	
				niveau = niveau - 1
			end
			puts "Vous êtes à la #{niveau}e marche."
		elsif lancee >= 5
			puts "Vous montez d'une marche !"
			niveau = niveau + 1
			puts "Vous êtes à la #{niveau}e marche."
		else
			puts "Vous restez où vous êtes."
		end
		compteur = compteur + 1
	end
	puts  "Bravo, vous avez gagné !"
	compteur
end


def occurence
	n = rand (100..1000)
	tours = 0
	n.times do 
		tours = tours + stairway_game
	end
	puts " En moyenne, il faut #{tours/n} tours pour arriver à la 10e marche"
end

occurence	
