class CocinaController < ApplicationController

  layout 'habitaciones'
  before_filter :authenticate_user!

  def index
    @foco = Cocina.first.foco_principal
  end

  def prender_foco_principal
    cocina = Cocina.first
    cocina.foco_principal = true
    cocina.save
    $arduino.digital_write 17, true
    Pusher.trigger('test_channel', 'foco_principal_cocina', true)
  end

  def apagar_foco_principal
    cocina = Cocina.first
    cocina.foco_principal = false
    cocina.save
    $arduino.digital_write 17, false
    Pusher.trigger('test_channel', 'foco_principal_cocina', false)
  end

  def crear_valor
    cocina = Cocina.new
    cocina.foco_principal = false
    cocina.save
  end

end
