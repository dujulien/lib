def signup
	puts "Veuillez créer un mot de passe"
	mdp = gets.chomp
	return mdp

end


def login(signup)
	mdp = signup
	puts "Veuillez saisir votre mot de passe"
    mdp2 = gets.chomp
	while mdp2 != mdp
	puts "Erreur, veuillez recommencer"
    mdp2 = gets.chomp
	end
	welcome_screen
end


def welcome_screen
	puts "Bienvenue dans ta zone secrète"
	puts "Voici le message secret qu'à envoyé Julien aujourd'hui à sa maman : <3 <3 <3"
end


def perform

	login(signup)

end

perform
