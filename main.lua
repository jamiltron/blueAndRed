-- main.lua

-- load is a function that gets called only once when the game is started
function love.load()
   require 'ship'
   ship = Ship:new(384, 500)
end

-- update is called continuously and is provided a variable 'dt'
-- representing the time in seconds since last call of update
function love.update(dt)
end

-- draw is called once per update and handles the rendering to the screen
function love.draw()
   ship:draw()
end

-- keypressed is called whenever a key is initially pressed
function love.keypressed(key)
   if key == 'escape' then
      love.quit()
   elseif key == 'x' then
      ship:flipColor()
   end
end

-- keyreleased is called whenever a key is released
function love.keyreleased(key)
end

-- focus is called whenever the love window is clicked on or off
-- the variable f is a bool stating whether or not the love window has focus
function love.focus(f)
end

-- quit is called once prior to shutting down the application, it is often used
-- to save game state in some way
function love.quit()
end
