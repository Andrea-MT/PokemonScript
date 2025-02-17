<h1> Script de Shell </h1>

Crear un script de Bash que haga lo siguiente:

* Recibir un parametro que sea el nombre de un Pokemon <br>
* Usar el comando curl para consultar la PokeApi <br>
* Usar jq para parsear el resultado <br>
* Imprimir los siguientes datos id, name, weight, height y order. Imprimirlos como se muestra en el ejemplo. <br>
* Crear un archivo con los resultados en forma de CSV (id, name, weight, height, order). El archivo debe estar concatenado, o sea no debe borrarse y volverse a crear (a menos que no exista)

Por ejemplo:

$> bash pokescript.sh ditto <br>

Ditto (No. 132) <br>
Id = 214 <br>
Weight = 40 <br>
Height = 4 <br>
