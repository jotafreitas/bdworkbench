import mysql.connector

con=mysql.connector.connect(
host='10.28.1.197',
database='HubFab',
user='suporte',
password='suporte')

if con.is_connected():
    db_info=con.get_server_info()
    print("Conectado ao banco de dados = ",db_info)

consulta_sql="select * from usuario"
cursor=con.cursor()
cursor.execute(consulta_sql)
linhas=cursor.fetchall()
print("Número total de registros: ",cursor.rowcount)

'''comando=("UPDATE usuario SET Nome = 'Joana' WHERE id_user = 2;")
cursor.execute(comando)
con.commit()'''

comando=("DELETE FROM usuario WHERE Nome = 'Keicy Sousa';")
cursor.execute(comando)
con.commit()


print("mostrando os registros")
for linha in linhas:
    print("ID DO USUÁRIO: ",linha[0])
    print("NOME DO USUÁRIO: ",linha[1])
    print("EMAIL DO USUÁRIO: ",linha[2])

'''comando="INSERT INTO usuario VALUES (null,'Keicy Sousa','keicysousa@hotmail.com',984101010,'05678909833','1997-05-10 17:58:00','Feminino',1,1);"
cursor=con.cursor()
cursor.execute(comando)
con.commit()'''


if con.is_connected():
    cursor.close()
    con.close()
    print("conexão encerrada")
