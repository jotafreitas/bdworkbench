from dezcadastros import *

while True:
    consulta_sql="SELECT * FROM cadastros"
    cursor=con.cursor()
    cursor.execute(consulta_sql)
    linhas=cursor.fetchall()
    print("Número total de registros: ",cursor.rowcount)
    print("---REALIZE SEU CADASTRO ABAIXO---")
    Nome = input("Nome: ")
    email = input("Email: ")
    telefone = input("Telefone: ")
    cpf = input("CPF: ")
    bday = input("Data de Nascimento: ")
    genero = input("Gênero: ")
    endereco = input("Endereço: ")
    cep = input("CEP: ")
    estado_civil = input("Estado Civil: ")
    time_futebol = input("Time do Coração: ")
    print("---Cadastro realizado com Sucesso!---\n")
    laele(Nome,email,telefone,cpf,bday,genero,endereco,cep,estado_civil,time_futebol)