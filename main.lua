-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
--getting widget API
local widget = require "widget"

local bgImage=display.newImageRect("background.jpg",360,570)
bgImage.x=display.contentCenterX
bgImage.y=display.contentCenterY

--moving platform
local platform3=display.newImageRect("button.png",44,20)
platform3.x=display.contentCenterX-150
platform3.y=display.contentCenterY+200

--left platform
local platform2=display.newImageRect("button.png",44,20)
platform2.x=display.contentCenterX-150
platform2.y=display.contentCenterY

--right platform
local platform1=display.newImageRect("button.png",44,20)
platform1.x=display.contentCenterX+150
platform1.y=display.contentCenterY-180

--base platform
local platform4=display.newImageRect("button.png",54,20)
platform4.x=display.contentCenterX
platform4.y=display.contentCenterY+250

--ceil platform
local platform5=display.newImageRect("button.png",54,20)
platform5.x=display.contentCenterX
platform5.y=display.contentCenterY-250

local object=display.newImageRect("balloon.png",30,35)
object.x=display.contentCenterX
object.y=display.contentCenterY-220

local physics=require("physics")
physics.start()
physics.setGravity(0,75)
--physics.addBody(platform3,"kinematic")
--platform3:setLinearVelocity(225,0)

physics.addBody(platform2,"kinematic")
--platform2:setLinearVelocity(900,0)
physics.addBody(platform1,"kinematic")
platform1:setLinearVelocity(-300,0)
physics.addBody(platform4,"static")
physics.addBody(platform5,"static")
physics.addBody(object,"dynamic", {radius=20,bounce=1.05})

k=1
while(k>0)
do
	local function tapListener( event )
 
	-- Code executed when the button is tapped
	platform2:setLinearVelocity(900,0)
    print( "Object tapped: " .. tostring(event.target) )  -- "event.target" is the tapped object
    return true
	end
end
 
local myButton = display.newRect( 50, 50, 50, 50 )
myButton:addEventListener( "tap", tapListener )  -- Add a "tap" listener to the object

myButton.x = display.contentCenterX-100
myButton.y = display.contentCenterY+250
