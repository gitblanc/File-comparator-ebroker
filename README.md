![](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![](https://img.shields.io/badge/GNU%20Bash-4EAA25?style=for-the-badge&logo=GNU%20Bash&logoColor=white)
<img src="https://user-images.githubusercontent.com/87705461/182097910-c4c560d8-750d-48ad-9aec-05e34ddb4099.png" width="55" height="28">


````
  ___   _   _                                                         _               
 | __| (_) | |  ___     __   ___   _ __    _ __   __ _   _ _   __ _  | |_   ___   _ _ 
 | _|  | | | | / -_)   / _| / _ \ | '  \  | '_ \ / _` | | '_| / _` | |  _| / _ \ | '_|
 |_|   |_| |_| \___|   \__| \___/ |_|_|_| | .__/ \__,_| |_|   \__,_|  \__| \___/ |_|  
                                          |_|
````
馃嚜馃嚫
Este script nos permite comprobar que una nueva versi贸n de las remesas parciales no supere en 8192 bits a la antigua versi贸n.

# _C贸mo usar este script_
1. En primer lugar puede ser que se nos pida autenticaci贸n de usuario root del sistema local debido a un paquete que puede estar o no intalado en el equipo.
2. Introducir la ip del host remoto al que pretendemos subir la nueva versi贸n y en el que se encuentra la antigua
3. Introducir el usuario que tenemos en esa m谩quina
4. Introducir la contrase帽a de este usuario

**NOTAS**: El script nos mostrar谩 en azul el tama帽o de las dos versiones del c贸digo en azul as铆 como su diferencia en rojo. Mostrar谩 en verde si todo est谩 correcto y sino se saldr谩 mostrando un mensaje de error.

---
# _C贸mo modificar este script_
1. Si deseamos que el tama帽o entre versiones aumente o disminuya, s贸lo tenemos que modificar el siguiente valor:

![imagen](https://user-images.githubusercontent.com/87705461/183834907-53d655e5-22c6-4d8e-aefb-0aae941a5565.png)

2. Si deseamos modificar la ruta donde se encuentra la antigua versi贸n y donde queremos ubicar a la nueva, modificamos lo siguiente:

![imagen](https://user-images.githubusercontent.com/87705461/183835177-2b4c316e-d559-4541-9dfc-16a49e9066b4.png)

3. Tambi茅n tendremos que modificar la ruta para la comparaci贸n de tama帽os:

![imagen](https://user-images.githubusercontent.com/87705461/183835720-84e751af-a663-43d6-b3b2-2a4b887ad859.png)

---
