
class Menu
  def initialize(window)
    @window = window
    @visible = true
    @start_button = Button.new("Start", 100, 100)
    @close_button = Button.new("Close", 100, 200)
    # other menu initialization code here
  end


  def update
    # update menu logic here
    @start_button.update
    @close_button.update
  end

  def draw
    # draw menu elements here
    @start_button.draw
    @close_button.draw
  end

  def button_down(id)
    if id == Gosu::MsLeft
      if @start_button.clicked?
        @visible = false
      elsif @close_button.clicked?
        @window.close
      end
    end
  end
end
