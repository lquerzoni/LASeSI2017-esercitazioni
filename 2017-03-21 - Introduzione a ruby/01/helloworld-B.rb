def ciao(nome="Mondo")
	puts "Ciao #{nome}!"
end

if __FILE__ == $0
	ciao "Mario"
	ciao
end