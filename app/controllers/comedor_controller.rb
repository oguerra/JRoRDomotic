class ComedorController < ApplicationController

  layout 'habitaciones'
  before_filter :authenticate_user!

  def index
    @foco = Comedor.first.foco_principal
  end

  def prender_foco_principal
    comedor = Comedor.first
    comedor.foco_principal = true
    comedor.save
    $arduino.digital_write 19, true
    Pusher.trigger('test_channel', 'foco_principal_comedor', true)
  end

  def apagar_foco_principal
    comedor = Comedor.first
    comedor.foco_principal = false
    comedor.save
    $arduino.digital_write 19, false
    Pusher.trigger('test_channel', 'foco_principal_comedor', false)
  end

  def crear_valor
    comedor = Comedor.new
    comedor.foco_principal = false
    comedor.save
  end
end
