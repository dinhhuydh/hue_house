class Light < ActiveRecord::Base
  def self.lights
    client = Hue::Client.new
    lights = client.lights
  end

  def self.light_fields
    [:id, :bridge, :name, :hue, :saturation, :brightness, :x, :y,
     :color_temperature, :alert, :effect, :color_mode, :type,
     :model, :software_version, :point_symbol, :on?, :reachable?]
  end
end
