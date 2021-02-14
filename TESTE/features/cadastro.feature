#language:pt

Funcionalidade: Compra

            Como um cliente cadastrado no automationpractice.com
            Eu quero fazer a compra de ao menos dois produtos
            Para que eu possa me vestir melhor

    @compra
    Cenario: Realizar a Compra
        Dado que acesso o site e que sou um cliente cadastrado
        Quando realizo o Login com uma conta válida
            E coloco dois itens em meu carrinho e finalizo a compra
        Então a compra é realizada com sucesso

    #Novo Cadastro

    @new
    Cenario: Novo Cadastro
        Dado que quero realizar compras no automationpratice.com
        Quando crio um cadastro no Site
        Então sou enviada para meu dashboard.
