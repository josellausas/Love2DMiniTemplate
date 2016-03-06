local mensaje  = "Hello World"

local playerImagePath = "art/tiburoncin.png"
local demoSoundPath = "art/fall.wav"
local imagen 	      = nil
local sonido = nil
local Helper = require("helpers")

-- Demo sound
local function playSFX()
	if(sonido == nil) then
		-- Static indica que es un sfx corto
		sonido = love.audio.newSource(demoSoundPath, "static")
	end

	sonido:play()
end


function love.load()
	love.graphics.setBackgroundColor(120,120,120)
	love.graphics.setNewFont(12)

	-- Start the things
	imagen = love.graphics.newImage(playerImagePath)
end


function love.update(dt)

end

function love.draw()
    love.graphics.print(mensaje, 10, 10)
    love.graphics.draw(imagen, 100, 200)
end

function love.mousepressed(x,y,button)

end

function love.mousereleased(x,y,button)
	if button == '1' then
		-- Do something
	end
end

function love.keypressed(key)
	print(key)
end

function love.keyreleased(key)
	if key == 'z' then
		playSFX()
	end
end

function love.focus(f)
	if not f then
		print("Lost focus")
	else
		print("Gained focus")
		print("Window dimensions = { " .. Helper.getScreenWidth() .. " , " .. Helper.getScreenHeight() .. " } ")
	end
end

function love.quit()
	-- Before quits runs this:
end
