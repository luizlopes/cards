def print_menu
  puts "Digite a opção desejada"
  puts "[1] Inserir um novo card"
  puts "[2] Exibir todos os cards"
  puts "[3] Buscar um card"
  puts "[4] Sair"
  puts
end

puts 'Bem vindo ao Cards System'
print_menu()

print 'Escolha uma opção: '
opcao = gets.to_i

while opcao != 4
  if opcao == 1
    puts 'Insira uma expressão em Português:'
    portugues = gets.chomp
    puts 'Insira uma expressão em Ingles:'
    ingles = gets.chomp
    card = "Portugues: " + portugues + " -> Ingles: " + ingles
    puts "Você inseriu o card: " + card
    puts
  elsif opcao == 2
    #TODO
  elsif opcao == 3
    #TODO
  elsif opcao == 4
    puts 'Obrigado por utilizar o Cards System'
  else
    puts 'entre com uma opcao válida'
    puts
  end
  print_menu()
  print 'Escolha uma opção: '
  opcao = gets.to_i
end
