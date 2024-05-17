local monitor = peripheral.find("monitor")
monitor.setTextColor(colors.black)
monitor.setBackgroundColor(colors.lightGray)
local chest2 = {
    {
        name="stone sword",
        value=5
    },
    {
        name="iron sword",
        value=25
    },
    {
        name="diamond sword",
        value=80
    },
    {
        name="bow",
        value=50
    }
}
local monx, mony = monitor.getSize()
monitor.clear()
local i = 0
for slot, item in ipairs(chest2) do
    local name_width = string.len(item.name) + string.len(item.value) + 9
    i = i + 1
    monitor.setCursorPos(1, i)
    monitor.write("")
    i = i + 1
    monitor.setCursorPos(1, i)
    monitor.write(("%s costs %d gold"):format(item.name, item.value))
    monitor.setCursorPos(monx - 5, i)
    monitor.setTextColor(colors.red)
    monitor.blit("_buy_","efffe","eeeee")
    monitor.setTextColor(colors.black)
    i = i + 1
    monitor.setCursorPos(1, i)
    monitor.write("")
end
dofile("buttons.lua")


