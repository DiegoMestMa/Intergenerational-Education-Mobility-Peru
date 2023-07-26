# Intergenerational mobility in education with data from Peru
El repositorio contiene el cálculo de la Movilidad Intergeneracional en Educación (MIE) para 4 cohortes de nacimiento de 10 años (1950 a 1989) de Perú. Los datos utilizados para tal fin provienen del INEI-ENAHO.

De forma detallada, el repositorio contiene lo siguiente:
1. [ENAHO.do](/ENAHO.do) Unión de los módulos: Características de los Miembros del Hogar (02), Educación (03) y Gobernabilidad (85) de la ENAHO.
2. Generación de las main variables: años de educación del jefe del hogar, años de educación del padre y años de educación de la madre. Estas variables se generan en base a la metodología propuesta por: 
Torres, J., Parra, F., & Rubio, J. (2018). Transmisión educativa intergeneracional en el Perú: un cálculo para las generaciones nacidas entre 1950-1989. Economía, 41(81), 101–124. 
https://doi.org/10.18800/ECONOMIA.201801.005.
4. Generación de las variables: departamento de nacimiento, departamento de residencia, región natural de nacimiento, región natural de residencia y área (urbana/rural) de residencia.
5. Réplica de las regresiones realizadas por Torres, Parra & Rubio (2018).


Nota: los resultados han sido validados. De todas formas, el código se debe utilizar con precaución. Cualquier sugerencia de mejora puede enviarme un correo a dffjs98@gmail.com
