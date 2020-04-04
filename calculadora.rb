require 'bigdecimal'
require 'colorize'
def manu
puts "Que operacion deseas realizar, 
Por favor selecciona un numero (1-6) y presiona enter\n".yellow 
puts "1.- Suma (+)	4.- Multiplicacion (*)".cyan	
puts "2.- Resta (-)	5.- Raiz Cuadrada (^2)".cyan
puts "3.- Division(/)	6.- Raiz Cubica".cyan
puts "7.- Logaritmo".cyan
opcion
end

def continuar
		puts "deseas realzar otra operacion?\n".yellow 
	
	puts '1.-Si 	2.-No'.cyan
	
	res = gets.chomp
	case res 
	when "1"
		manu
	when "2"
		puts "Bye".cyan
	else 
		puts "Por Favor Ingresa un numero valido (1-2)".red
		continuar
	end 
end 

def numeros
	puts "Por favor Ingresa el primer numero
y presiona enter para continuar\n".yellow 
	@numero1 = gets.chomp
	puts "por favor ingresa el segundo numero
y presiona enter para continuar\n".yellow  
	@numero2 = gets.chomp

end 

def opcion 
	opcion1 = gets.chomp
	case opcion1
	when "1"
		suma
	when "2"
		resta
	when "3"
		division
	when "4"
		multiplicacion
	when "5"
		raiz
	when "6"
		cubica
	when "7"
		log
		else 
			puts "Por Favor Ingresa un numero valido (1-6)".red
			opcion
	end
end 

def suma 
	numeros 
	suma1 = @numero1.to_f + @numero2.to_f
	res = suma1.round(2)
	puts "RESULTADO = ".green+res.to_s.green ,""
	puts 
continuar
end 



def resta
	numeros 
	resta1 = @numero1.to_f - @numero2.to_f
	res = resta1.round(2) 
	
	puts "RESULTADO = ".green+res.to_s.green , ""
	continuar

end

def division 
	numeros 
	division1 = @numero1.to_f / @numero2.to_f
	res = division1.round(2)
	
	puts "RESULTADO = ".green+res.to_s.green , ""
	continuar
end

def multiplicacion
	numeros 
	multiplicacion1 = @numero1.to_f * @numero2.to_f
	res = multiplicacion1.round(2)
	puts ""
	puts "RESULTADO = ".green+res.to_s.green , ""
	continuar
end

def raiz 
	puts 'ingresa el numero'.yellow
	numero = gets.chomp
	res = Math.sqrt(numero.to_i).round(2)
	puts ""
	puts "RESULTADO = ".green+res.to_s.green , ""
	puts ""
	continuar
end 



def cubica
	puts 'ingresa el numero'.yellow , ""
	numero = gets.chomp 
	entero = numero.to_i
	raiz_cubica = (entero) ** (1.0 / 3)
	puts "RESULTADO = #{(raiz_cubica.to_f).round(2)}".green, ""
	continuar
end

def log 
	puts 'ingresa el numero'.yellow , ""
	numero = gets.chomp 
	res = Math.log10(numero.to_i).round(20) 
	puts "RESULTADO = #{res.to_f}".green , ""
	continuar
end 

puts manu	

a = gets.chomp