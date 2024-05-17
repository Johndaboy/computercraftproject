local monitor = peripheral.find("monitor")
monitor.setBackgroundColor(colors.lightGray)
monitor.setTextColor(colors.black)
monitor.clear()
monx, mony = monitor.getSize()
monitor.setCursorPos(monx / 2 - 6, mony / 2)
monitor.write("Go back to home")
while true do
    local event, side, x, y = os.pullEvent("monitor_touch")
    if event then
        redstone.setOutput("right", true)
        sleep(0.5)
        redstone.setOutput("right", false)
    end
end
