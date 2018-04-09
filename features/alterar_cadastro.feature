#language: pt
#utf-8

Funcionalidade: Alteração de cadastro de um empregado 
Eu administrador de cadastro de cliente
Quero alterar o cadastro de um novo empregado no site
Para manter o registro na base de dados  atualizado

@step
Cenario: Alterando cadastro de um novo empregado 
Dado que esteja logado no site orangehr
Quando eu efetuar alteracao do cadastro de um empregado
Entao vou ver a mensagem de confirmação da alteracao do cadastro