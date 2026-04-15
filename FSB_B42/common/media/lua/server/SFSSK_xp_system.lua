local function onGainXP(player, perk, amount)
    if not player or not perk or not amount then
        return
    end

    -- Solo afecta Fitness y Strength
    if perk ~= Perks.Fitness and perk ~= Perks.Strength then
        return
    end

    local md = player:getModData()

    -- Evita bucles al reinyectar XP dentro del mismo evento
    if md.FSB_ApplyingXP then
        return
    end

    local bookMultiplier = FSB.getBookMultiplier(player, perk)

    local extraMultiplier = 1.0
    if _G.GetExtraXPMultiplier then
        extraMultiplier = _G.GetExtraXPMultiplier(player, perk) or 1.0
    end

    local finalMultiplier = bookMultiplier * extraMultiplier
    if finalMultiplier <= 1.0 then
        return
    end

    md.FSB_ApplyingXP = true

    local xp = player:getXp()
    xp:AddXP(perk, -amount)
    xp:AddXP(perk, amount * finalMultiplier)

    md.FSB_ApplyingXP = false
end

Events.OnGainXP.Add(onGainXP)
