require_relative 'card'

class EmergencialCard < Card
  attr_reader :emergency_phone

  def initialize(portugues, ingles, phone="nenhum")
    super portugues, ingles
    @emergency_phone = phone
  end

  def to_s
    s = super   # isso me parece feio, mas fiz assim para testar possibilidades
    "#{s} \nTelefone de Emergencia: #{emergency_phone}"
  end

end