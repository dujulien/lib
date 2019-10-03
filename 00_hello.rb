def say_hello(first_name)
	puts "Bonjour #{first_name}"
end


def ask_first_name
	puts "Quel est ton prénom ?"
	first_name = gets.chomp
	return first_name
end


def perform
#  first_name = ask_first_name
#  hello = say_hello
  say_hello(ask_first_name)
end


perform