FSB = FSB or {}

-- 📚 Multiplicadores oficiales del mod
FSB.BOOK_MULTIPLIERS = {
    [1] = 2.0,
    [2] = 3.5,
    [3] = 5.0,
    [4] = 9.0,
    [5] = 12.0
}

FSB.DEBUG = false

local function debugLog(message)
    if FSB.DEBUG then
        print("[FSB] " .. tostring(message))
    end
end

-- Registro defensivo de eventos para compatibilidad entre builds.
function FSB.registerEvent(eventNames, callback)
    if type(callback) ~= "function" or not Events then
        return false
    end

    if type(eventNames) == "string" then
        eventNames = { eventNames }
    end

    if type(eventNames) ~= "table" then
        return false
    end

    for _, eventName in ipairs(eventNames) do
        local eventTable = Events[eventName]
        if type(eventTable) == "table" then
            local addFn = rawget(eventTable, "Add")
            if type(addFn) == "function" then
                addFn(callback)
                debugLog("Registered callback on Events." .. eventName)
                return true
            end
        end
    end

    debugLog("Could not register callback for events: " .. table.concat(eventNames, ", "))
    return false
end

-- 🧠 Obtener nivel de libro
function FSB.getBookLevel(player, perk)
    local md = player:getModData()

    if perk == Perks.Fitness then
        return md.FitnessBookLevel or 0
    elseif perk == Perks.Strength then
        return md.StrengthBookLevel or 0
    end

    return 0
end

-- 📊 Obtener multiplicador de libros
function FSB.getBookMultiplier(player, perk)
    local level = FSB.getBookLevel(player, perk)

    if level > 0 then
        return FSB.BOOK_MULTIPLIERS[level] or 1.0
    end

    return 1.0
end

function FSB.getTotalMultiplier(player, perk)
    local mult = 1.0

    mult = mult * FSB.getBookMultiplier(player, perk)

    if _G.GetExtraXPMultiplier then
        mult = mult * _G.GetExtraXPMultiplier(player, perk)
    end

    return mult
end
