--[[
    A simple state used to display the player's score before they
    transition back into the play state. Transitioned to from the
    PlayState when they collide with a Pipe.
]]

ScoreState = Class { __includes = BaseState }

--[[
    When we enter the score state, we expect to receive the score
    from the play state so we know what to render to the State.
]]
function ScoreState:enter(params)
    self.score = params.score
    -- Determine which medal to display
    if self.score >= 30 then
        self.medal = love.graphics.newImage('gold.png')
    elseif self.score >= 20 then
        self.medal = love.graphics.newImage('silver.png')
    elseif self.score >= 10 then
        self.medal = love.graphics.newImage('bronze.png')
    else
        self.medal = nil
    end
end

function ScoreState:update(dt)
    -- go back to play if enter is pressed
    if love.keyboard.wasPressed('enter') or love.keyboard.wasPressed('return') then
        gStateMachine:change('countdown')
    end
end

function ScoreState:render()
    -- Display the score and the message
    love.graphics.setFont(flappyFont)
    love.graphics.printf('Oof! You lost!', 0, 64, VIRTUAL_WIDTH, 'center')
    love.graphics.setFont(mediumFont)
    love.graphics.printf('Score: ' .. tostring(self.score), 0, 100, VIRTUAL_WIDTH, 'center')

    -- Display the medal if there is one
    if self.medal then
        love.graphics.draw(self.medal, VIRTUAL_WIDTH / 2 - self.medal:getWidth() / 2, 130)
    end

    love.graphics.printf('Press Enter to Play Again!', 0, 160, VIRTUAL_WIDTH, 'center')
end
