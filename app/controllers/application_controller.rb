class ApplicationController < ActionController::Base
  protect_from_forgery
  require 'pusher'
  Pusher.app_id = '96957'
  Pusher.key = 'f39ede4193aca3481b9c'
  Pusher.secret = '48a9b1065eb06e6c1cd9'
  require "arduino_firmata"
  $arduino = ArduinoFirmata.connect "/dev/ttyACM1"
  rescue_from CanCan::AccessDenied do
    redirect_to salir_path
  end
end
