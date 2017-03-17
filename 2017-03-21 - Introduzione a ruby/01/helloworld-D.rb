class AmicoDiTutti
	# Definisce i metodi setter e getter per le variabili d'istanza definite
	attr_accessor :nomi

	# Inizializza l'oggetto
	def initialize(nomi = "Mondo")
		@nomi = nomi
	end

	def saluta
		if @nomi.nil?
			puts "..."
		elsif @nomi.respond_to?("each")
			# Se @nomi risponde al metodo each, allora funziona come una lista
			@nomi.each do |nome|
				puts "Ciao #{nome}!"
			end
		else
			puts "Ciao #{@nomi}!"
		end
	end

	# Congeda tutti
	def congeda
		if @nomi.nil?
			puts "..."
		elsif @nomi.respond_to?("join")
			# Unisci gli elementi della lista con delle virgole
			puts "Arrivederci #{@nomi.join(", ")}. A presto!"
		else
			puts "Arrivederci #{@nomi}. A presto!"
		end
	end

end


if __FILE__ == $0
	adt = AmicoDiTutti.new
	adt.saluta
	adt.congeda

	# Cambia @nomi in "Paolo"
	adt.nomi = "Paolo"
	adt.saluta
	adt.congeda

	# Cambia @nomi in una lista di nome
	adt.nomi = ["Fabio", "Davide", "Raul", "Giorgia", "Federica"]
	adt.saluta
	adt.congeda

	# Cambia @nomi in nil
	adt.nomi = nil
	adt.saluta
	adt.congeda
end