Dado('que acesso o site e que sou um cliente cadastrado') do
  visit "http://automationpractice.com/index.php?controller=authentication&back=my-account"
  #O site está dando erro de resource as vezes, ainda que não saiba o porque. Dessa forma a automação as vezes falha devido a isso.
  #esse erro não é relacionado ao código e pode acontecer em qualquer etapa da automação.
end

Quando('realizo o Login com uma conta válida') do
  find("#email").set "datumqatest@soprock.com"
  find("#passwd").set "datum2021"
  find("#SubmitLogin").click

  #ponto de validação de que está no seu "dashboard"
  expect(page).to have_css "#my-account" 

  sleep 2 #temporario
end

Quando('coloco dois itens em meu carrinho e finalizo a compra') do
  find(:xpath, "//ul[contains(@class, 'dynamized')]/li/a[contains(text(), 'Casual Dresses')]").click
    #só para adiantar: não tá funcionando. 
end

Então('a compra é realizada com sucesso') do
  pending # Write code here that turns the phrase above into concrete actions
end