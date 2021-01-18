from connection.conn import Connection

class Profesor:
    def __init__(self,nombre='',edad=''):
        self.nombre=nombre
        self.edad=edad

    def create(self):
        try:
            conn=Connection()
            query=f'''
                INSERT INTO profesor (nombre,edad)
                VALUES ('{self.nombre}',{self.edad});
            '''
            conn.execute_query(query)
            conn.commit()
            print('Se agregó a la tabla')
        except Exception as e:
            conn.rollback()
    
    def  read_all(self):
        try:
            conn=Connection()
            query="SELECT * FROM profesor;"
            cursor=conn.execute_query(query)
            records=cursor.fetchall()
            
            for record in records:
                print(f'ID: {record[0]}')
                print(f'Nombre: {record[1]}')
                print(f'Edad: {record[2]}')
                print("=======================")
        except Exception as e:
            print(f'{str(e)}')
    
    def update(self,id):
        try:
            conn=Connection()
            query=f'''
                UPDATE profesor SET nombre='{self.nombre}',edad={self.edad}
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
                SELECT COUNT(*) FROM alumno_profesor WHERE id_profesor={id};
            '''
            cursor=conn.execute_query(query)
            filas=cursor.fetchone()

            if filas[0]==0:
                query=f'''
                    DELETE FROM profesor WHERE id={id};
                '''
                conn.execute_query(query)
                conn.commit()
                print('Se removio de la tabla')
            else:
                print('No se puede remover')
            
        except Exception as e:
            conn.rollback()
            print(f'{str(e)}')
