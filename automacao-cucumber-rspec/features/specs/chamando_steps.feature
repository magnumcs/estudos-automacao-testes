#language: pt

@steps_cenario
Funcionalidade: Trabalhando com chamada de outros steps

Cenário: Amasso laranjas
Dado eu tenho 10 laranjas no estoque.
Quando eu amasso 2 laranjas
Então eu verifico quantas laranjas sobraram no estoque.

# @revendo
Cenário: Revendo laranjas
Quando revendo 2 laranjas
Então eu verifico com quantas laranjas eu fiquei