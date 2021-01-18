from connection.conn import Connection

class Nota:
    def __init__(self,nota=''):
        self.nota=nota

    def create(self):
        try:
            conn=Connection()
            query=f'''
                INSERT INTO nota (nota)
                VALUES ({self.nota});
            '''
            conn.execute_query(query)
            conn.commit()
            print('Se agregó a la tabla')
        except Exception as e:
            conn.rollback()
    
    def  read_all(self):
        try:
            conn=Connection()
            query="SELECT * FROM nota;"
            cursor=conn.execute_query(query)
            records=cursor.fetchall()
            
            for record in records:
                print(f'ID: {record[0]}')
                print(f'Nota: {record[1]}')
                print("=======================")
        except Exception as e:
            print(f'{str(e)}')
    
    def update(self,id):
        try:
            conn=Connection()
            query=f'''
                UPDATE nota SET nota={self.nota}
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
                SELECT COUNT(*) FROM alumno_profesor WHERE id_nota={id};
            '''
            cursor=conn.execute_query(query)
            filas=cursor.fetchone()

            if filas[0]==0:
                query=f'''
                    DELETE FROM nota WHERE id={id};
                '''
                conn.execute_query(query)
                conn.commit()
                print('Se removio de la tabla')
            else:
                print('No se puede remover')
            
        except Exception as e:
            conn.rollback()
            print(f'{str(e)}')
