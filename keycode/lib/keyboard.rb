# frozen_string_literal: true

class Keyboard
  def keycode(instructions, keypad)
    @x = @y = 1
    @vertical_limit = keypad.count
    @horizontal_limit = keypad.first.count

    instructions.split.map do |keypresses|
      navigate!(keypresses)
      keypad[@y][@x]
    end.join
  end

  def navigate!(keypresses)
    keypresses.split('').each do |keypress|
      @y -= 1 if keypress == 'C' && (@y - 1) >= 0
      @y += 1 if keypress == 'B' && (@y + 1) < @vertical_limit
      @x -= 1 if keypress == 'E' && (@x - 1) >= 0
      @x += 1 if keypress == 'D' && (@x + 1) < @horizontal_limit
    end
  end
end
