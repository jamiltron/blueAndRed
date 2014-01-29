-- ship.lua

local class = require 'lib/middleclass'

local BLUE_IMG = love.graphics.newImage('res/shipBlue.png')
local RED_IMG = love.graphics.newImage('res/shipRed.png')
local BLUE = 'blue'
local RED = 'red'
local WIDTH = 32
local HEIGHT = 32

Ship = class('Ship')


function Ship:initialize(x, y)
   self.x = x
   self.y = y
   self.image = BLUE_IMG
   self.color = BLUE
   self.width = WIDTH
   self.height = HEIGHT
end

function Ship:draw()
   love.graphics.draw(self.image, self.x, self.y)
end

function Ship:flipColor()
   if self.color == BLUE then
      self.color = RED
      self.image = RED_IMG
   elseif self.color == RED then
      self.color = BLUE
      self.image = BLUE_IMG
   else
      error("color must be 'blue' or 'red'")
   end
end
