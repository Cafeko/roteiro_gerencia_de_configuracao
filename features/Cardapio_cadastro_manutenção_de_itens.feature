Feature: Cadastro e manutenção de itens no cardápio
    As a restaurante
    I want to poder criar, editar e remover itens do meu cardapio
    So that eu possa exibir os itens para os clientes

Scenario: Entrar na tela de editar cardápio
    Given estou logado como “Restaurante” com login “restaurante_generico” e senha “senha_super_dificil_123”
    And estou na tela “perfil do restaurante”
    When escolho a opção “Cardápio”
    Then estou na tela “Editor de cardápio”
    And estou na aba “Cardápio” da tela “Editor de cardápio”

Scenario: Entrar na tela de itens
    Given estou na aba “Cardápio” da tela “Editor de cardápio”
    When seleciono a opção “Itens”
    Then estou na aba “Itens” da tela “Editor de cardápio”
    And novo passo necessario

main1

Scenario: Ir para a tela de adicionar item
    Given estou na aba “Itens” da tela “Editor de cardápio”
    And há pelo menos uma categoria no cardápio
    When seleciono a opção “Adicionar”
    Then estou na tela “Adicionar novo item”

Scenario: Tentar ir para a tela de adicionar item sem ter criado nenhuma categoria
    Given estou na aba “Itens” da tela “Editor de cardápio”
    And Não há categorias no cardápio
    When seleciono a opção “Adicionar”
    And corrigido
    Then mensagem informando que é necessário ter pelo menos uma categoria para criar um item é exibida
    And estou na aba “Categorias” da tela “Editor de cardápio”