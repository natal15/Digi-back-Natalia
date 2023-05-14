Esta base de datos es sobre DIGIMON, la idea es crear una base de datos que conecte a los niños elegidos
con su digimon y a los digimons entre sí con sus diferentes digi-evoluciones. Por otro lado, contiene una
con la relación entre los emblemas que corresponden a cada niño y los propios niños.
He incluido también una tabla de usuarios para poder mostrar el tema de autenticación y nodemailer.
Ahora describo un poco los end points y como acceder a ellos.
He creado carpeta de controladores, de modelos y de rutas para este proyecto. Está basado en el que hicimos de pokemon
donde he cogido algunas cosas ya las he adaptado. Después de pelearme con él, creo que he llegado a entender el como está
enlazado todo y sus funcionalidades dentro de cada archivo y carpeta.

Contiene las siguientes tablas:

-chosen_children
-digimons_rookie
-digimons_champion
-digimons_mega_champion
-emblems
-children_emblems (relación entre los niños elegidos y sus emblemas)

1.-End Points en sus diferentes carpetas:

	a) Children:
		- Muestra los niños elegidos y su descripción junto con su emblema. Se elige mediante
		el emblema y salen todos los que lo tengan
		GET: (localhost:3000/children?emblem=honesty)

		- Selecciona a los niños elegidos y sus digimons rookie
		GET: (localhost:3000/children/digi)

		-Aparece el niño elegido y su digimon con un array de los emblemas
		GET: (localhost:3000/children/kid/Davis)

	b) Rookie:
		-Selecciona el nombre del niño elegido y su digimon en todas las evoluciones
		GET: (localhost:3000/rookie) 

	c) Champion:
		- Muestra los digimons de nivel champion y su evolución previa
		GET: (localhost:3000/champion)

		- Muestra un único digimon nivel champion, su evolución previa, su evolución posterior 
		y su niño elegido
		GET: (localhost:3000/champion/name?champion=Greymon)

	d) Mega:
		-Inserta un nuevo digimon mega
		POST:(localhost:3000/mega)
		{
   		  "mega": "Skullgreymon",
    		  "level": "Mega_Champion"
		}

		-Deja ver todos los digimons mega
		GET: (localhost:3000/mega)

		-Elimina un digimon mega
		DELETE: (localhost:3000/mega/Skullgreymon)




2.-Autenticación:

Signup: 

En esta sección está incluido el registro en una página, encriptación de contraseña y nodemailer.
POST: (localhost:3000/auth/signup)

{
    "nickname": "Mapacche",
    "email": "mapache@mapache.com",(aquí se puede probar un correo para ver nodemailer)
    "password": "1234"
}



Signin:

Aquí loguearse en la cuenta y la creación de la cookie. Da error al meter datos que
no son correctos.
POST: (localhost:3000/auth/signin)
{
    "nickname": "Mapacche",
    "email": "mapache@mapache.com",
    "password": "1234"
}


Signout:

En signout, salir de la cuenta y borrado de la cookie

POST: (localhost:3000/auth/signout)



Nodemailer:

He creado un correo para enviar los emails. He probado que funciona, aunque llega
a spam.

Para la siguiente release, me gustaría poder incluir rutas más complicadas y end points más enrevesados.
He aprendido que el tema nombres de las tablas, etiquetas y valores es muy importante, porque tuve
el error de llamarlos a todos por "name", y lo tuve que cambiar. A lo mejor, ahora que lo veo terminado,
hubiera creado una sola tabla de digimons con sus niveles y seleccionarlos desde ahí.
Creo que quiero seguir trabajando en este tema con el proyecto final. Es con el que mejor me lo he pasado, le he
echado muchas horas, pero no me he dado ni cuenta de como pasaba el tiempo.
GRACIAS!



