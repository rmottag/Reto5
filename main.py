from controllers.profesor import Profesor
from controllers.curso import Curso
from controllers.alumno import Alumno
from controllers.salon import Salon
from controllers.nota import Nota
from controllers.alumno_profesor import Alumno_Profesor

########## PROFESOR ###########

#CREATE
#profesor=Profesor('Juan',30)
#profesor.create()

#READ_ALL
#profesor=Profesor()
#profesor.read_all()

#UPDATE
#profesor=Profesor('Juan',31)
#profesor.update(1)

#DELETE
#profesor=Profesor()
#profesor.delete(1)



######### CURSO #########

#CREATE
#curso=Curso('aritmetica')
#curso.create()

#READ_ALL
#curso=Curso()
#curso.read_all()



######## ALUMNO #########

#CREATE
#alumno=Alumno('Pedro',15)
#alumno.create()


########## SALON ###############

#CREATE
#salon=Salon('301')
#salon.create()


########### NOTA ###########

#CREATE
nota=Nota(14)
nota.create()

########### ASIGNAR CURSO ############

#ap=Alumno_Profesor(1,1,1,1,1)
#ap.asignar_curso()