from connection.conn import Connection

class Curso:
    def __init__(self,nombre=''):
        self.nombre=nombre

    def create(self):
        try:
            conn=Connection()
            query=f'''
                INSERT INTO curso (nombre)
                VALUES ('{self.nombre}');
            '''
            conn.execute_query(query)
            conn.commit()
            print('Se agregó a la tabla')
        except Exception as e:
            conn.rollback()
    
    def  read_all(self):
        try:
            conn=Connection()
            query="SELECT * FROM curso;"
            cursor=conn.execute_query(query)
            records=cursor.fetchall()
            
            for record in records:
                print(f'ID: {record[0]}')
                print(f'Nombre del curso: {record[1]}')
                print("=======================")
        except Exception as e:
            print(f'{str(e)}')
    
    def update(self,id):
        try:
            conn=Connection()
            query=f'''
                UPDATE curso SET nombre='{self.nombre}'
                WHERE id={id};
            '''
            conn.execute_query(query)
            conn.commit()
            print('Actualizacion exitosa')
        except Exception as e:
            conn.rollback()
            print(f'{str(e)}')
    
    def delete(self,id):
        try:
            conn=Connection()
            query=f'''
                SELECT COUNT(*) FROM alumno_profesor WHERE id_curso={id};
            '''
            cursor=conn.execute_query(query)
            filas=cursor.fetchone()

            if filas[0]==0:
                query=f'''
                    DELETE FROM curso WHERE id={id};
                '''
                conn.execute_query(query)
                conn.commit()
                print('Se removio de la tabla')
            else:
                print('No se puede remover')
            
        except Exception as e:
            conn.rollback()
            print(f'{str(e)}')
