            #language: pt
            # Tela de login - US-0002
            
            Funcionalidade: Tela de Login - US-0002
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Contexto: Dado que eu acesse a página de autenticação do portal Ebac

            Cenário: Autenticação válida
            Quando eu digitar o usuário <usuario>
            E a senha <senha>
            Então devo ser direcionado para a tela de checkout

            Cenário: Autenticação inválida
            Quando eu digitar o usuário <usuario>
            E a senha <senha>
            Então devo ser direcionado para a tela de checkout

            Exemplos:
            | usuario               | senha       |
            | "joao@ebac.com.br"    | "teste@123" |
            | "cleber@ebac.com.br"  | "teste@123" |
            | "roberto@ebac.com.br" | "teste@123" |