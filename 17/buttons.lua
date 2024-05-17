monitor = peripheral.find("monitor")
width, height = monitor.getSize()
while true do
    local event, side, x, y = os.pullEvent("monitor_touch")
    if (y == 2) then
        print("stone")
        redstone.setOutput("back", true)
        sleep(0.5)
        redstone.setOutput("back", false)
    elseif (y == 5) then
        print("iron")
        redstone.setOutput("right", true)
        sleep(0.5)
        redstone.setOutput("right", false)
    elseif (y == 8) then
        print("diamond")
        redstone.setOutput("front", true)
        sleep(0.5)
        redstone.setOutput("front", false)
    elseif (y == 11) then
        print("enchanted")
        redstone.setOutput("top", true)
        sleep(0.5)
        redstone.setOutput("top", false)
    end
end
