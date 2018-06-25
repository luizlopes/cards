require_relative 'card'

class EmergencialCard < Card
  attr_reader :emergency_phone

  def initialize(portugues, ingles, phone="nenhum")
    super portugues, ingles
    @emergency_phone = phone
  end

end