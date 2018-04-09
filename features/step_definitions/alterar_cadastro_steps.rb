Quando(/^eu efetuar alteracao do cadastro de um empregado$/) do
   fill_in('txtUsername',:with=>'admin') #digitar nome do usuário
 sleep 2
 fill_in('txtPassword',:with=>'admin') #digitar senha
 sleep 5
 click_button('btnLogin') #clicar no botão login
 sleep 2
 assert_text('Welcome Admin') #confirmando que entrou no site
 sleep 2 
 click_link('menu_pim_viewPimModule') #clicar no botão PIM
 sleep 2
 click_link('menu_pim_viewEmployeeList') #clicar no de editar perfil
 sleep 2
  find(:xpath,'//*[@id="resultTable"]/tbody/tr[3]/td[3]/a').click #clicar no usuário escolhido
  sleep 1
  click_button('Edit') #clicar em editar
  sleep 2
  fill_in('personal_txtEmpMiddleName',:with=>'Fernanda') #escrever no segundo nome
  sleep 2
  click_button('Save')
  sleep 2
end

Entao("vou ver a mensagem de confirmação da alteracao do cadastro") do
  assert_text('Successfully Saved')
  	sleep 2 
end

