local function onCreatePlayer(playerIndex, player)
    if not player then
        return
    end

    local md = player:getModData()

    if md.FitnessBookLevel and md.FitnessBookLevel > 0 then
        print("Fitness XP Boost activo: x" .. FSB.BOOK_MULTIPLIERS[md.FitnessBookLevel])
    end

    if md.StrengthBookLevel and md.StrengthBookLevel > 0 then
        print("Strength XP Boost activo: x" .. FSB.BOOK_MULTIPLIERS[md.StrengthBookLevel])
    end
end

FSB.registerEvent("OnCreatePlayer", onCreatePlayer)
