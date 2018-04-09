Dado(/^que esteja logado no site orangehr$/) do
  visit 'http://opensource.demo.orangehrmlive.com/'
end

Quando(/^eu efetuar o cadastro de um empregado$/) do
 fill_in('txtUsername',:with=>'admin')
 sleep 2
 fill_in('txtPassword',:with=>'admin')
 sleep 5
 click_button('btnLogin')
 sleep 2
 assert_text('Welcome Admin')
 sleep 2 
 click_link('menu_pim_viewPimModule')
 sleep 2
 click_link('menu_pim_addEmployee')
 sleep 2
 fill_in('firstName',:with=>'Thais')
 sleep 2 
 fill_in('lastName',:with=>'Mendes')
 sleep 2
 click_button('Save')
sleep 4
end

Entao(/^vou ver a mensagem de confirmação do cadastro$/) do
  assert_text('Personal Details')
end