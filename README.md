![](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)
![](https://img.shields.io/badge/GNU%20Bash-4EAA25?style=for-the-badge&logo=GNU%20Bash&logoColor=white)

````
  ___   _   _                                                         _               
 | __| (_) | |  ___     __   ___   _ __    _ __   __ _   _ _   __ _  | |_   ___   _ _ 
 | _|  | | | | / -_)   / _| / _ \ | '  \  | '_ \ / _` | | '_| / _` | |  _| / _ \ | '_|
 |_|   |_| |_| \___|   \__| \___/ |_|_|_| | .__/ \__,_| |_|   \__,_|  \__| \___/ |_|  
                                          |_|
````
🇪🇸
Este script nos permite comprobar que una nueva versión de las remesas parciales no supere en 8192 bits a la antigua versión.

# _Cómo usar este script_
1. En primer lugar puede ser que se nos pida autenticación de usuario root del sistema local debido a un paquete que puede estar o no intalado en el equipo.
2. Introducir la ip del host remoto al que pretendemos subir la nueva versión y en el que se encuentra la antigua
3. Introducir el usuario que tenemos en esa máquina
4. Introducir la contraseña de este usuario

**NOTAS**: El script nos mostrará en azul el tamaño de las dos versiones del código en azul así como su diferencia en rojo. Mostrará en verde si todo está correcto y sino se saldrá mostrando un mensaje de error.

---
# _Cómo modificar este script_
1. Si deseamos que el tamaño entre versiones aumente o disminuya, sólo tenemos que modificar el siguiente valor:

![imagen](https://user-images.githubusercontent.com/87705461/183834907-53d655e5-22c6-4d8e-aefb-0aae941a5565.png)

2. Si deseamos modificar la ruta donde se encuentra la antigua versión y donde queremos ubicar a la nueva, modificamos lo siguiente:

![imagen](https://user-images.githubusercontent.com/87705461/183835177-2b4c316e-d559-4541-9dfc-16a49e9066b4.png)

3. También tendremos que modificar la ruta para la comparación de tamaños:

![imagen](https://user-images.githubusercontent.com/87705461/183835720-84e751af-a663-43d6-b3b2-2a4b887ad859.png)

---
