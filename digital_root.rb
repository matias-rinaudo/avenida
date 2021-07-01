class Avenida
	def digital_root number
		#Valido si el numero que ingresaron es string lo convierto a entero
		number = number.class == String ? number.to_i : number 
		#Valido si el numero es positivo o negativo
		if number > 0 
			digits = number.digits #saco los digitos del numero ingresado
			sum_of_digits = 0 #inicializo una variable para hacer la sumatoria
			sum_of_digits = digits.sum{|digit|digit} #realizo la sumatoria de los digitos del numero
			while sum_of_digits.digits.count > 1  #Condicion para seguir sumando o no 
				sum_of_digits = sum_of_digits.digits.sum{|digit|digit}
				break if sum_of_digits.digits.count == 1 #bandera para salir de la condicion 
			end
			puts "#{sum_of_digits}"
		else
			puts "Ingrese un numero positivo"
		end
	end
end 

#ruby -r "./digital_root.rb" -e "Avenida.new.digital_root 16"