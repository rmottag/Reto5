from connection.conn import Connection

class Alumno_Profesor:
    def __init__(self,id_alumno='',id_profesor='',id_curso='',id_salon='',id_nota=''):
        self.id_alumno=id_alumno
        self.id_profesor=id_profesor
        self.id_curso=id_curso
        self.id_salon=id_salon
        self.id_nota=id_nota
    
    def asignar_curso(self):
        try:
            conn=Connection()
            query=f'''
                INSERT INTO alumno_profesor (id_alumno,id_profesor,id_curso,id_salon,id_nota)
                VALUES ({self.id_alumno},{self.id_profesor},{self.id_curso},{self.id_salon},{self.id_nota});
            '''
            conn.execute_query(query)
            conn.commit()
            print('Se agregó a la tabla')
        except Exception as e:
            conn.rollback()