----------------------------------------------------------------------------------------
-- Title: PhysicsAndCollisions
-- Name: Clara Mackay
-- Course: ICS2O/3C
-- This program...
----------------------------------------------------------------------------------------

-- Hide status bar 
display.setStatusBar(display.HiddenStatusBar)

-- load physics
local physics = require("physics")

-- start physics 
physics.start()
----------------------------------------------------------------------------------------
--Objects
----------------------------------------------------------------------------------------
-- ground 
local ground = display.newImage("Images/ground.png", 0, 0)

	-- set the x and y positions 
	ground.x = display.contentCenterX
	ground.y = display.contentHeight 
	
	--change the width to be the same as the screen 
	ground.width = display.contentWidth

	-- add to physics
	physics.addBody(ground, "static", {friction = 0.5, bounce = 0.3})

----------------------------------------------------------------------------------------

-- create a verticle beam 
local beam = display.newImage("Images/beam.png", 0, 0)

	--set the x and y positions
	beam.x = display.contentCenterX/5
	beam.y = display.contentCenterY*1.65

	--set the beam size 
	beam.width = display.contentWidth/2
	beam.height = display. contentHeight/10

	-- rotate the beam 45 degrees so it is on an angle
	beam:rotate(45)

	-- send it to the back layer 
	beam:toBack()

	-- add to physics
	physics.addBody(beam, "static", {friction = 0.5, bounce = 0.3})

-- create background 
local bkg = display.newImage("Images/bkg.png", 0, 0)

	-- set the x and y positions 
	bkg.x = display.contentCenterX
	bkg.y = display.contentCenterY 

	-- set the background size 
	bkg.width = display.contentWidth
	bkg.height = display.contentHeight

	-- send to back 
	bkg:toBack()

--------------------------------------------------------------------------------

-- create a verticle beam 
local wallBeam = display.newImage("Images/beam.png", 0, 0)

	--set the x and y positions
	wallBeam.x = 1000
	wallBeam.y = display.contentCenterY*1.65

	--set the wallBeam size 
	wallBeam.width = 1000
	wallBeam.height = display. contentHeight/10

	-- rotate the wallBeam 45 degrees so it is on an angle
	wallBeam:rotate(90)

	-- send it to the back layer 
	wallBeam:toBack()

	-- add to physics
	physics.addBody(wallBeam, "static", {friction = 0.5, bounce = 0.3})
----------------------------------------------------------------------------------------
--FUNCTIONS
----------------------------------------------------------------------------------------
-- create the first ball 
local function firstBall()
	-- creating first ball 
	local ball1 = display.newImage("Images/super_ball.png", 0, 0)

	--add to physics
	physics.addBody(ball1, {density = 1.0, friction = 0.5, bounce = 0.3, radius = 25})
end

----------------------------------------------------------------------------------------

local function secondBall()
	-- creating second ball 
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	-- adding to physics
	physics.addBody(ball2, {density = 1.0, friction = 0.5, bounce = 0.3, radius = 12.5})

	-- make it smaller than the original size 
	ball2:scale(0.5, 0.5)
end

----------------------------------------------------------------------------------------

local function thirdBall()
	-- creating second ball 
	local ball3 = display.newImage("Images/super_ball.png", 0, 0)

	-- adding to physics
	physics.addBody(ball3, {density = 1.0, friction = 0.5, bounce = 0.4, radius = 100})

	ball3:scale(4.0, 4.0)

end

----------------------------------------------------------------------------------------

local function fourthBall()
	-- creating second ball 
	local ball4 = display.newImage("Images/super_ball.png", 0, 0)

	-- adding to physics
	physics.addBody(ball4, {density = 1.0, friction = 0.7
		, bounce = 0.6, radius = 50})

	ball4:scale(3.0, 3.0)

end

----------------------------------------------------------------------------------------
-- TIMER DELAYS - call each function after the given millisecond
----------------------------------------------------------------------------------------
timer.performWithDelay(0, firstBall)
timer.performWithDelay(500, secondBall)
timer.performWithDelay(499, thirdBall)
timer.performWithDelay(450, fourthBall)