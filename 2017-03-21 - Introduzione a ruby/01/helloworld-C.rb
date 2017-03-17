# Definisce la classe PersonaCordiale
class PersonaCordiale

	# Specifica il costruttura
	def initialize(nome = "Mondo")
		# Le variabili che iniziano per @ sono variabili d'istanza
		@nome = nome
	end

	def saluta
		puts "Ciao #{@nome}!"
	end

	def congeda
		puts "Arrivederci #{@nome}, a presto."
	end
end

if __FILE__ == $0
	p = PersonaCordiale.new "Gianni"
	p.saluta
	p.congeda
	puts PersonaCordiale.instance_variables
	puts PersonaCordiale.instance_methods(false)
end