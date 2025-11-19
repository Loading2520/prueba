Algoritmo triangulo
	//solocita los lados del triangulo l1,l2, l3
	Escribir "dime un lado"
	Leer l1
	
	Escribir "dime otro lado"
	Leer l2
	
	Escribir "dime el ultimo lado"
	Leer l3
	
	Si l1 + l2 > l3 Y l1 + l3 > l2 Y l2 + l3 > l1 Entonces //aqui comprueba que se puede hacer un triangulo
        Escribir "Se puede formar un triángulo"
		Si l1^2+l2^2=l3^2 o l1^2+l3^2=l2^2 o l3^2+l2^2=l2^2 Entonces //Aqui comprueba que es un triangulo rectangulo
			Escribir "Puede ser un triángulo rectángulo"
			Si l1 > l2 Y l1 > l3 Entonces //aqui mira si l1 es la hipotenusa
				h = l1
				Escribir "h ahora es: ", h
				Escribir "el area es ", l3*l2/2 //area del triangulo
			FinSi
			
			Si l2 > l1 Y l2 > l3 Entonces//aqui mira si l2 es la hipotenusa
				h=l2
				Escribir "h ahora es: ", h
				Escribir "el area es ", l1*l3/2 //area del triangulo
			FinSi
			
			Si l3 > l1 Y l3 > l2 Entonces //aqui mira si l3 es la hipotenusa
				h=l3
				Escribir "h ahora es: ", h
				Escribir "el area es ", l1*l2/2 //area del triangulo
			FinSi
		SiNo
			Escribir "no es un triangulo rectangulo"
			
		Fin Si //Aqui nos dice que no es un triangulo rectangulo
	SiNo
		Escribir "no es un triangulo rectangulo"
		
		
	Fin Si
FinAlgoritmo
//si es triangulo rectangulo decir area