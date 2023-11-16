import mysql.connector

con=mysql.connector.connect(
host='10.28.1.197',
database='DezCadastros',
user='suporte',
password='suporte')
cursor=con.cursor()
if con.is_connected():
    db_info=con.get_server_info()
    print("Conectado ao banco de dados = ",db_info)

def laele(Nome,email,telefone,cpf,bday,genero,endereco,cep,estado_civil,time_futebol):
    sql = 'INSERT INTO cadastros (Nome,email,telefone,cpf,bday,genero,endereco,cep,estado_civil,time_futebol) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'
    val = (Nome,email,telefone,cpf,bday,genero,endereco,cep,estado_civil,time_futebol)
    #cursor=con.cursor()
    cursor.execute(sql,val)
    con.commit()