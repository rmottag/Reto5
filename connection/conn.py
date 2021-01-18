from psycopg2 import connect

class Connection:
    def __init__(self):
        self.db=connect(host="localhost",user="postgres",password="pos",
                    database="reto5",port="5432")
        self.cursor=self.db.cursor()
    
    def execute_query(self,query):
        self.cursor.execute(query)
        return self.cursor
    
    def commit(self):
        self.db.commit()
        return True
    
    def rollback(self):
        self.db.rollback()
        return True
