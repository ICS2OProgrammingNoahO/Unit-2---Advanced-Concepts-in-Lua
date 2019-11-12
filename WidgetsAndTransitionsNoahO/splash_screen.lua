-----------------------------------------------------------------------------------------
--
-- splash_screen.lua
-- Splash Screen
-- Created by Noah Ouellette
-- November 10, 2019
--
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
-- INITIALIZATIONS
-----------------------------------------------------------------------------------------

-- Calling Composer Library
local composer = require( "composer" )

-----------------------------------------------------------------------------------------

-- Calling Widget Library
local widget = require( "widget" )

-----------------------------------------------------------------------------------------

-- Naming Scene
sceneName = "main_menu"

-----------------------------------------------------------------------------------------

-- Creating Scene Object
local scene = composer.newScene( sceneName )

-----------------------------------------------------------------------------------------
-- FORWARD REFERENCES
-----------------------------------------------------------------------------------------

local bkg

-----------------------------------------------------------------------------------------

-- The function called when the screen doesn't exist
function scene:create( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    -- Creating the background
    bkg = display.newRect( 0, 0, 0, 0 ) -- They're set to 0 so they can be clearly set below

        -- Setting position
        bkg.x = display.contentCenterX
        bkg.y = display.contentCenterY 

        -- Setting dimensions
        bkg.width = display.contentWidth
        bkg.height = display.contentHeight

        -- Setting color
        bkg:setFillColor(  0.004, 0.537, 1 )

        -- Sending to Back Layer
        bkg:toBack( )

    -----------------------------------------------------------------------------------------

        -----------------------------------------------------------------------------------------

        -- Inserting objects into the scene group in order to ONLY be associated with this scene
        sceneGroup:insert( fadeButton )
        sceneGroup:insert( crossFadeButton )
        sceneGroup:insert( zoomOutInButton )
        sceneGroup:insert( zoomOutInFadeButton )
        sceneGroup:insert( zoomInOutButton )
        sceneGroup:insert( zoomInOutFadeButton )
        sceneGroup:insert( flipButton )
        sceneGroup:insert( flipFadeOutInButton )
        sceneGroup:insert( zoomOutInRotateButton )
        sceneGroup:insert( zoomOutInFadeRotateButton )
        sceneGroup:insert( zoomInOutRotateButton )
        sceneGroup:insert( zoomInOutFadeRotateButton )
        sceneGroup:insert( fromRightButton )
        sceneGroup:insert( fromLeftButton )
        sceneGroup:insert( fromTopButton )
        sceneGroup:insert( fromBottomButton )
        sceneGroup:insert( slideLeftButton )
        sceneGroup:insert( slideRightButton )
        sceneGroup:insert( slideDownButton )
        sceneGroup:insert( slideUpButton )

    end

end

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to leave the screen
function scene:hide( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------

    local phase = event.phase

    -----------------------------------------------------------------------------------------

    if ( phase == "will" ) then
        -- Called when the scene is on screen (but is about to go off screen).
        -- Insert code here to "pause" the scene.
        -- Example: stop timers, stop animation, stop audio, etc.

    -----------------------------------------------------------------------------------------

    elseif ( phase == "did" ) then
        -- Called immediately after scene goes off screen.
    end

end

-----------------------------------------------------------------------------------------

-- The function called when the scene is issued to be destroyed
function scene:destroy( event )

    -- Creating a group that associates objects with the scene
    local sceneGroup = self.view

    -----------------------------------------------------------------------------------------


    -- Called prior to the removal of scene's view ("sceneGroup").
    -- Insert code here to clean up the scene.
    -- Example: remove display objects, save state, etc.
end

-----------------------------------------------------------------------------------------
-- EVENT LISTENERS
-----------------------------------------------------------------------------------------

-- Adding Event Listeners
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

-----------------------------------------------------------------------------------------