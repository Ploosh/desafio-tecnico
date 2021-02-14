Dado('que quero realizar compras no automationpratice.com') do
    visit "http://automationpractice.com/index.php?controller=authentication&back=my-account"
end
  
Quando('crio um cadastro no Site') do
    find("#email_create").set "teste1@gmail.com"
    find("#SubmitCreate").click

    #ponto de validação de que está na segunda area de criação de cadastro
    expect(page).to have_css "#authentication" 
    sleep 10

    #check 'checkbox[name]', allow_label_click: true
    #page.check('#uniform-id_gender2')
    #find(:css, "#id_gender2[value='2']").set(true)
    
    #nenhum dessas tentativas acima funcionou
end
  
Então('sou enviada para meu dashboard.') do
    pending # Write code here that turns the phrase above into concrete actions
end