Events.OnGainXP.Add(function(player, perk, amount)
    if not player then return end

    -- Solo nos interesa Fitness y Strength
    if perk ~= Perks.Fitness and perk ~= Perks.Strength then return end

    --------------------------------------------------
    -- 🧠 MULTIPLICADOR BASE (LIBROS)
    --------------------------------------------------

    local bookMultiplier = FSB.getBookMultiplier(player, perk)

    --------------------------------------------------
    -- 🔮 MULTIPLICADORES EXTERNOS (traits, otros mods)
    --------------------------------------------------

    local extraMultiplier = 1.0

    if _G.GetExtraXPMultiplier then
        extraMultiplier = _G.GetExtraXPMultiplier(player, perk) or 1.0
    end

    --------------------------------------------------
    -- ⚡ MULTIPLICADOR FINAL
    --------------------------------------------------

    local finalMultiplier = bookMultiplier * extraMultiplier

    -- Si no hay boost, no hacemos nada (optimización)
    if finalMultiplier == 1.0 then return end

    --------------------------------------------------
    -- ❗ APLICAR XP CORRECTAMENTE
    --------------------------------------------------

    local xp = player:getXp()

    -- Quitar XP base
    xp:AddXP(perk, -amount)

    -- Aplicar XP modificado
    xp:AddXP(perk, amount * finalMultiplier)
    
end)
Events.OnGainXP.Add(function(player, perk, amount)
    if not player then return end

    -- 🚫 evitar loop infinito
    if player:getModData().FSB_ApplyingXP then return end

    if perk ~= Perks.Fitness and perk ~= Perks.Strength then return end

    local md = player:getModData()

    local bookMultiplier = FSB.getBookMultiplier(player, perk)

    local extraMultiplier = 1.0
    if _G.GetExtraXPMultiplier then
        extraMultiplier = _G.GetExtraXPMultiplier(player, perk) or 1.0
    end

    local finalMultiplier = bookMultiplier * extraMultiplier

    if finalMultiplier == 1.0 then return end

    local xp = player:getXp()

    -- 🔒 activar bandera
    md.FSB_ApplyingXP = true

    xp:AddXP(perk, -amount)
    xp:AddXP(perk, amount * finalMultiplier)

    -- 🔓 desactivar
    md.FSB_ApplyingXP = false
end)