require 'gosu'

module ZOrder
  BACKGROUND, PLAYER, UI = *0..2
end

SCREEN_SIZE = 600

LIGHT_ON_IMG = 'on_med.png'
LIGHT_OFF_IMG = 'off_med.png'

LIGHT_SML_ON_IMG = 'on_sml.png'
LIGHT_SML_OFF_IMG = 'off_sml.png'

LIGHT_LAR_ON_IMG = 'on.png'
LIGHT_LAR_OFF_IMG = 'off.png'

class Lights < Gosu::Window

  def initialize
      super SCREEN_SIZE, SCREEN_SIZE
      self.caption = "Lights Demo"

      @is_on = true
      @on = Gosu::Image.new("./images/" + LIGHT_LAR_ON_IMG)
      @off = Gosu::Image.new("./images/" + LIGHT_LAR_OFF_IMG)
  end

  def update
	end

  def clear_screen()
    if @is_on
      color = Gosu::Color::WHITE
    else
      color = Gosu::Color::BLACK
    end
    draw_quad(
        0, 0, color,
        SCREEN_SIZE, 0, color,
        0, SCREEN_SIZE, color,
        SCREEN_SIZE, SCREEN_SIZE, color,
        ZOrder::BACKGROUND
      )
  end
  # Do we need to pass in parameters here?
  def draw_light(x, y)
    if @is_on
        @on.draw(50, 75, ZOrder::PLAYER)
    else
        @off.draw(50, 75, ZOrder::PLAYER)
    end
  end

	def draw
    clear_screen
    draw_light(50, 75)
	end

 	def needs_cursor?; true; end

	def button_down(id)
		case id
	  when Gosu::KB_SPACE
      @is_on = !@is_on
	  end
	end
end

Lights.new.show if __FILE__ == $0
