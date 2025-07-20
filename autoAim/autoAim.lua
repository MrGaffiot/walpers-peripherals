function calculate_final_position(x, y, v, theta, g, d)
    -- Convert theta from degrees to radians if needed
    -- (comment this out if theta is already in radians)
    -- theta = math.rad(theta)
    
    -- Calculate velocity components
    local vx = v * math.cos(theta)
    local vy = v * math.sin(theta)
    
    -- Calculate final x position
    local xf = x + vx + ((d * vx - vx) / 2)
    
    -- Calculate final y position with gravity
    local gravity_term = 0.05
    local vf_y = d * (vy + gravity_term)
    local yf = y + vy + ((vf_y - vy) / 2)
    
    return xf, yf
end

-- Example usage:
local x, y = 0, 0  -- Initial position
local v = 10      -- Initial velocity
local theta = math.pi/4  -- 45 degrees in radians
local g = 9.81    -- Gravity
local d = 0.95    -- Drag coefficient
local ng = 0      -- No gravity flag (0 = gravity enabled)

local xf, yf = calculate_final_position(x, y, v, theta, g, d, ng)
print(string.format("Final position: (%.2f, %.2f)", xf, yf))