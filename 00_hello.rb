def say_hello
	first_name = gets.chomp
	puts "Bonjour #{first_name}"
end

def ask_first_name
	puts "Quel est ton prénom ?"
	return say_hello
end


def perform
  first_name = ask_first_name
  hello = say_hello
  say_hello(first_name)

end

perform