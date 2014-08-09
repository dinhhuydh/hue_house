class LightsController < ApplicationController
  def all_on
    lights = Light.lights

    lights.each do |light|
      light.on = true
    end
  end

  def all_off
    lights = Light.lights

    lights.each do |light|
      light.on = false
    end
  end
end
