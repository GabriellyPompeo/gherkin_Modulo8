            #language: pt
            # Configurar Pedido - US-0001

            Funcionalidade: Configurar Produto na EBAC-SHOP - US-0001
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho
            

            Cenário: Produto adicionado ao carrinho com sucesso
            Dado que estou na página de um produto
            E seleciono uma <cor>
            E seleciono um <tamanho>
            E seleciono uma <quantidade>
            E clico no <botao>
            Então o produto deve ser <acao>

                Exemplos:
                | cor        | tamanho | quantidade | botao                    |  ação                           |
                | "Vermelho" | "M"     | 5          | "Adicionar ao Carrinho"  | "Adicionar produto ao carrinho" |
                | "Azul"     | "L"     | 3          | "Adicionar ao Carrinho"  | "Adicionar produto ao carrinho" |
                | "Verde"    | "S"     | 1          | "Adicionar ao Carrinho"  | "Adicionar produto ao carrinho" |
                | "Amarelo"  | "XL"    | 8          | "Adicionar ao Carrinho"  | "Adicionar produto ao carrinho" |


            Cenário: Limite de 10 produtos por venda
            Dado que estou na página de um produto
            E seleciono uma <cor>
            E seleciono um <tamanho>
            E seleciono uma <quantidade> maior que 10
            E clico no <botao>
            Então devo ver uma <mensagem> informando que apenas 10 produtos podem ser adicionados por venda

                Exemplos:
                | cor        | tamanho | quantidade | botao                    |  mensagem                           |
                | "Vermelho" | "M"     | 50         | "Adicionar ao Carrinho"  | "apenas 10 produtos podem ser adicionados por venda" |
                | "Azul"     | "L"     | 30         | "Adicionar ao Carrinho"  | "apenas 10 produtos podem ser adicionados por venda" |
                | "Verde"    | "S"     | 15         | "Adicionar ao Carrinho"  | "apenas 10 produtos podem ser adicionados por venda" |
                | "Amarelo"  | "XL"    | 28         | "Adicionar ao Carrinho"  | "apenas 10 produtos podem ser adicionados por venda" |


            Cenário: Botão para limpar as seleções dos campos
            Dado que estou na página de um produto
            E seleciono uma <cor>
            E seleciono um <tamanho>
            E seleciono uma <quantidade>
            E clico no <botao> 
            Então as seleções de <cor>, <tamanho> e <quantidade> devem ser redefinidas ao estado original

                Exemplos:
                | cor        | tamanho | quantidade | botao     | cor   | tamanho | quantidade |
                | "Vermelho" | "M"     | 2          | "Limpar"  | ""    | ""      | ""         |
                | "Azul"     | "L"     | 1          | "Limpar"  | ""    | ""      | ""         | 
                | "Verde"    | "S"     | 5          | "Limpar"  | ""    | ""      | ""         | 
                | "Amarelo"  | "XL"    | 3          | "Limpar"  | ""    | ""      | ""         | 