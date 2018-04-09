#language: pt
#utf-8

Funcionalidade: Cadastrar um empregado 
Eu administrador de cadastro de cliente
Quero cadastrar um novo empregado no site
Para manter o registro na base de dados
@cadastrar
Cenario: Cadastro de um novo empregado 
Dado que esteja logado no site orangehr
Quando eu efetuar o cadastro de um empregado
Entao vou ver a mensagem de confirmação do cadastro