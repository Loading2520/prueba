Algoritmo circulo
	//Estructura que lee dos radios de circulos donde r2 es mayor que r1
	Repetir
		Escribir "Dame r1 del circulo"
		Leer r1
		Escribir "Dame r2  mayor a r1 del circulo"
		Leer r2
		
	Hasta Que(r2>r1)
	//Calcula la corona del circula creada por los dos circulos que al ser r2 mayor a r1 se calcula el area del grande y se le resta el area del menor
	area<-PI*(r2^2-r1^2)
	Escribir "el area de la corona circular es:", area 
FinAlgoritmo