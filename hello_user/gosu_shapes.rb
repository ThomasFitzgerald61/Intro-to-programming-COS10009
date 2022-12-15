require 'rubygems'
require 'gosu'
require './circle'

# The screen has layers: Background, middle, top
module ZOrder
  BACKGROUND, MIDDLE, TOP, RIGHT = *0..2
end

class DemoWindow < Gosu::Window
  def initialize
    super(840, 600, false)
  end

  def draw
    # see www.rubydoc.info/github/gosu/gosu/Gosu/Color for colours
    # background
    draw_quad(0, 0, 0xff_ffffff, 840, 0, 0xff_ffffff, 0, 600, 0xff_ffffff, 840, 600, 0xff_ffffff, ZOrder::BACKGROUND)

    #Rectangle
    draw_quad(40, 40, Gosu::Color::GREEN, 300, 40, Gosu::Color::GREEN, 40, 200, Gosu::Color::GREEN, 300, 200, Gosu::Color::GREEN, ZOrder::MIDDLE)


   #Circle
    img2 = Gosu::Image.new(Circle.new(100))
    # drawn as a red circle:
    img2.draw(300, 300, ZOrder::TOP, 1.0, 1.0, 0xff_FF8000)

  #Triangle
       draw_triangle(550, 50, 0xff_FF8000, 450, 220, 0xff_FF8000, 650, 220, Gosu::Color::BLUE, ZOrder::TOP)

    end
end

DemoWindow.new.show
