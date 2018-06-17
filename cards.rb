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

print_boas_vindas()
print_menu()
opcao = get_opcao()

while opcao != 4
  if opcao == 1
    puts 'Insira uma expressão em Português:'
    portugues = gets.chomp
    puts 'Insira uma expressão em Ingles:'
    ingles = gets.chomp
    card = "Portugues: #{portugues} -> Ingles: #{ingles}"
    puts "Você inseriu o card: #{card}"
    puts
  elsif opcao == 2
    #TODO
  elsif opcao == 3
    #TODO
  else
    print_opcao_invalida()
  end
  print_menu()
  opcao = get_opcao()
end
print_despedida()