OPCAO_INSERIR_CARD = 1
OPCAO_EXIBIR_TODOS = 2
OPCAO_BUSCAR_CARD = 3
OPCAO_SAIR = 4

def print_boas_vindas
  puts 'Bem vindo ao Cards System'
end

def print_despedida
  puts
  puts 'Obrigado por utilizar o Cards System'
end

def print_opcao_invalida
  puts 'entre com uma opcao válida'
  puts
end

def print_menu
  puts "Digite a opção desejada"
  puts "[1] Inserir um novo card"
  puts "[2] Exibir todos os cards"
  puts "[3] Buscar um card"
  puts "[4] Sair"
  puts
end

def get_opcao
  print 'Escolha uma opção: '
  gets.to_i
end

def print_card(portugues, ingles)
  puts "Portugues: #{portugues} -> Ingles: #{ingles}"
end

print_boas_vindas()
print_menu()
opcao = get_opcao()

cards = {}

while opcao != OPCAO_SAIR
  if opcao == OPCAO_INSERIR_CARD
    puts 'Insira uma expressão em Português:'
    portugues = gets.chomp
    puts 'Insira uma expressão em Ingles:'
    ingles = gets.chomp
    cards[portugues] = ingles
    puts "Você inseriu o card: "
    print_card(portugues, ingles)
    puts
  elsif opcao == OPCAO_EXIBIR_TODOS
    cards.each { |portugues, ingles| print_card(portugues, ingles) }
    puts
  elsif opcao == OPCAO_BUSCAR_CARD
    #TODO
  else
    print_opcao_invalida()
  end
  print_menu()
  opcao = get_opcao()
end
print_despedida()