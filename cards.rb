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

def gets_opcao
  print 'Escolha uma opção: '
  gets.to_i
end

def gets_portugues
  puts 'Insira uma expressão em Português: '
  gets.chomp
end

def gets_ingles
  puts 'Insira uma expressão em Ingles: '
  gets.chomp
end

def gets_texto_busca
  puts 'Digite o texto a ser buscado: '
  gets.chomp
end

def print_card(card)
  puts "Portugues: #{card[:portugues]} -> Ingles: #{card[:ingles]}"
end

def print_card_nao_encontrado(card)
  puts "Card #{card} não encontrado"
end

print_boas_vindas()
print_menu()
opcao = gets_opcao()

cards = []

while opcao != OPCAO_SAIR
  if opcao == OPCAO_INSERIR_CARD
    portugues = gets_portugues()  
    ingles = gets_ingles()
    card = {portugues: portugues, ingles: ingles} 
    cards << card
    puts "Você inseriu o card: "
    print_card(card)
    puts
  elsif opcao == OPCAO_EXIBIR_TODOS
    cards.each { |card| print_card(card) }
    puts
  elsif opcao == OPCAO_BUSCAR_CARD
    texto = gets_texto_busca()
    existe_texto = cards.keys.include? texto
    if existe_texto
      #print_card texto, cards[texto]
    else
      existe_texto = cards.values.include? texto
      if (existe_texto)
        #print_card cards.key(texto), texto
      else
        print_card_nao_encontrado(texto)
      end
    end
  else
    print_opcao_invalida()
  end
  print_menu()
  opcao = gets_opcao()
end
print_despedida()
