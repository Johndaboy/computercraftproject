local monitor = peripheral.find("monitor")
monitor.setTextColor(colors.black)
monitor.setBackgroundColor(colors.lightGray)
local chest2 = {
    {
        name="iron helmet",
        value=20
    },
    {
        name="iron chestplate",
        value=60
    },
    {
        name="iron leggings",
        value=50
    },
    {
        name="iron boots",
        value=25
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


