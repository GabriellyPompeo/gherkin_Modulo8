            #language: pt
            # US-0003 – Tela de cadastro - Checkout

            Funcionalidade: Concluir Cadastro na EBAC-SHOP - US-0003
            Como cliente da EBAC-SHOP
            Eu quero concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse a página de cadastro do portal Ebac

            Cenário: Cadastro com todos os dados obrigatórios
            Dado que estou na página de cadastro
            Quando preencho os campos <nome> <sobrenome> <pais> <endereco> <cidade> <CEP> <telefone> <email>
            E clico no botão de cadastro
            Então devo ver uma <mensagem>

                Exemplos:
                |  nome        | sobrenome     | pais        | endereco        | cidade       | CEP         | telefone           | email                     | mensagem                          | 
                | "João"       | "Silva"       | "Brasil"    | "Rua A, 123"    | "São Paulo"  | "12345-678" | "+55 11 987654321" | "joao@email.com"          | "usuário cadastrado com sucesso!" |



            Cenário: E-mail com formato inválido
            Dado que estou na página de cadastro
            Quando preencho o campo de <email> com um formato inválido
            E clico no botão de cadastro
            Então devo ver uma <mensagem>

                Exemplos:
                | email            | mensagem             |
                | "emailInvalido"  | "o email é inválido" |


            Cenário: Tentativa de cadastro com campos vazios
            Dado que estou na página de cadastro
            Quando tento cadastrar com os campos <nome> <sobrenome> <pais> <endereco> <cidade> <CEP> <telefone> <email>
            E clico no botão de cadastro
            Então devo ver uma <mensagem>

                Exemplos:
                | nome         | sobrenome     | pais        | endereco        | cidade           | CEP         | telefone     | email             | mensagem                                        | 
                | "Maria"      | ""            | "Brasil"    | "Avenida B, 45" | "Porto Alegre"   | ""          | "912345678"  | "maria@email.com" | "os campos obrigatórios devem ser preenchidos"  |
                