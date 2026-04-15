Events.OnReadLiterature.Add(function(player, item)
    if not player or not item then return end

    local md = player:getModData()
    local fullType = item:getFullType()

    --------------------------------------------------
    -- 💪 FITNESS
    --------------------------------------------------

    if fullType == "FSB_B42.BookFitness1" then
        md.FitnessBookLevel = math.max(md.FitnessBookLevel or 0, 1)
    elseif fullType == "FSB_B42.BookFitness2" then
        md.FitnessBookLevel = math.max(md.FitnessBookLevel or 0, 2)
    elseif fullType == "FSB_B42.BookFitness3" then
        md.FitnessBookLevel = math.max(md.FitnessBookLevel or 0, 3)
    elseif fullType == "FSB_B42.BookFitness4" then
        md.FitnessBookLevel = math.max(md.FitnessBookLevel or 0, 4)
    elseif fullType == "FSB_B42.BookFitness5" then
        md.FitnessBookLevel = math.max(md.FitnessBookLevel or 0, 5)
    end

    --------------------------------------------------
    -- 🏋️ STRENGTH
    --------------------------------------------------

    if fullType == "FSB_B42.BookStrength1" then
        md.StrengthBookLevel = math.max(md.StrengthBookLevel or 0, 1)
    elseif fullType == "FSB_B42.BookStrength2" then
        md.StrengthBookLevel = math.max(md.StrengthBookLevel or 0, 2)
    elseif fullType == "FSB_B42.BookStrength3" then
        md.StrengthBookLevel = math.max(md.StrengthBookLevel or 0, 3)
    elseif fullType == "FSB_B42.BookStrength4" then
        md.StrengthBookLevel = math.max(md.StrengthBookLevel or 0, 4)
    elseif fullType == "FSB_B42.BookStrength5" then
        md.StrengthBookLevel = math.max(md.StrengthBookLevel or 0, 5)
    end
end)