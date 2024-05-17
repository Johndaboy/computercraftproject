dofile("Welcomescreen.lua")
local monitor = peripheral.find("monitor")
local page = 1
local monx, mony = monitor.getSize()
while true do
    local event, side, x, y = os.pullEvent("monitor_touch")
    if (y > 1 and y < 4 and page == 1 and x > monx - monx / 8 and x < monx - 1) then
        dofile("Menu.lua")
        page = 2
    elseif (page == 2 and y > mony / 2 - 2 and y < mony / 2 + 2) then
        if (x > monx / 4 - 2 and x < monx / 4 + 2) then
            redstone.setOutput("back", true)
            sleep(0.5)
            redstone.setOutput("back", false)
        elseif (x > monx - monx / 4 - 2 and x < monx - monx / 4 + 2) then
            redstone.setOutput("front", true)
            sleep(0.5)
            redstone.setOutput("front", false)
        end
    end
end
