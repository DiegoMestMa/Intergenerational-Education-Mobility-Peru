clear all
set more off
capture log close

******
* 1. Carpetas de trabajo y globals
******

global o1 "C:/Users/Diego/OneDrive/Escritorio/Investigación/MEI"

global o2 "$o1/1 Bases de Datos/"

global o3 "$o1/2 Resultados/"

global padre papa mama

******
* 2. Cálculos
******
use "$o3/Base_final_Torres.dta"

******
* 2.1. Regresión cohortes 1950-1989, separado por Sexo del Padre (Hijos hombres y mujeres)
******

*** 1. Según: Solo Sexo del padre
foreach var of global padre{ 
	forv i=1950(10)1980{
		reg educhijo educ`var' if añonac>=`i' & añonac<=`i'+9

	}
}

*** 2. Según: Región Natural de Nacimiento

* Regresión padre y region natural de nacimiento: Costa
foreach var of global padre{ 
	forv i=1950(10)1980{
		reg educhijo educ`var' if añonac>=`i' & añonac<=`i'+9 & regnatnac==1

	}
}

* Regresión padre y region natural de nacimiento: Sierra
foreach var of global padre{ 
	forv i=1950(10)1980{
		reg educhijo educ`var' if añonac>=`i' & añonac<=`i'+9 & regnatnac==2

	}
}

* Regresión padre y region natural de nacimiento: Selva
foreach var of global padre{ 
	forv i=1950(10)1980{
		reg educhijo educ`var' if añonac>=`i' & añonac<=`i'+9 & regnatnac==3

	}
}

*** 3. Según Área de Residencia (Urbano/Rural)
* Regresión padre y area: Urbano
foreach var of global padre{ 
	forv i=1950(10)1980{
		reg educhijo educ`var' if añonac>=`i' & añonac<=`i'+9 & area==1

	}
}

* Regresión padre y area: Rural
foreach var of global padre{ 
	forv i=1950(10)1980{
		reg educhijo educ`var' if añonac>=`i' & añonac<=`i'+9 & area==2

	}
}

******
* 2.2. Regresión cohortes 1950-1989, separado por Sexo del Padre (hijos hombres)
******

*** 1. Según: Sexo de Hijo (solo hombre)

* Regresión padre y sexo hijo: hombre
foreach var of global padre{ 
	forv i=1950(10)1980{
		reg educhijo educ`var' if añonac>=`i' & añonac<=`i'+9 & p207==1

	}
}

*** 2. Según: Región Natural de Nacimiento

* Regresión padre y region natural de nacimiento: Costa
foreach var of global padre{ 
	forv i=1950(10)1980{
		reg educhijo educ`var' if añonac>=`i' & añonac<=`i'+9 & p207==1 &regnatnac==1

	}
}

* Regresión padre y region natural de nacimiento: Sierra
foreach var of global padre{ 
	forv i=1950(10)1980{
		reg educhijo educ`var' if añonac>=`i' & añonac<=`i'+9 & p207==1 & regnatnac==2

	}
}

* Regresión padre y region natural de nacimiento: Selva
foreach var of global padre{ 
	forv i=1950(10)1980{
		reg educhijo educ`var' if añonac>=`i' & añonac<=`i'+9 & p207==1 & regnatnac==3

	}
}


*** 3. Según Área de Residencia (Urbano/Rural)
* Regresión padre y area: Urbano
foreach var of global padre{ 
	forv i=1950(10)1980{
		reg educhijo educ`var' if añonac>=`i' & añonac<=`i'+9 & area==1

	}
}

* Regresión padre y area: Rural
foreach var of global padre{ 
	forv i=1950(10)1980{
		reg educhijo educ`var' if añonac>=`i' & añonac<=`i'+9 & area==2

	}
}
