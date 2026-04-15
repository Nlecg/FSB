local function safeAddToDistribution(distributionName, itemType, chance)
    if not distributionName or not itemType or not chance then
        return
    end

    local distribution = Distributions and Distributions[distributionName]
    if not distribution or not distribution.items then
        return
    end

    table.insert(distribution.items, itemType)
    table.insert(distribution.items, chance)
end

local function addBookLoot()
    -- Librerías
    safeAddToDistribution("BookstoreBooks", "FSB_B42.BookFitness1", 6)
    safeAddToDistribution("BookstoreBooks", "FSB_B42.BookFitness2", 4)
    safeAddToDistribution("BookstoreBooks", "FSB_B42.BookFitness3", 2)
    safeAddToDistribution("BookstoreBooks", "FSB_B42.BookFitness4", 2)
    safeAddToDistribution("BookstoreBooks", "FSB_B42.BookFitness5", 1)

    safeAddToDistribution("BookstoreBooks", "FSB_B42.BookStrength1", 6)
    safeAddToDistribution("BookstoreBooks", "FSB_B42.BookStrength2", 4)
    safeAddToDistribution("BookstoreBooks", "FSB_B42.BookStrength3", 2)
    safeAddToDistribution("BookstoreBooks", "FSB_B42.BookStrength4", 2)
    safeAddToDistribution("BookstoreBooks", "FSB_B42.BookStrength5", 1)

    -- Casas
    safeAddToDistribution("LivingRoomShelf", "FSB_B42.BookFitness1", 2)
    safeAddToDistribution("LivingRoomShelf", "FSB_B42.BookFitness2", 2)
    safeAddToDistribution("LivingRoomShelf", "FSB_B42.BookFitness3", 2)
    safeAddToDistribution("LivingRoomShelf", "FSB_B42.BookFitness4", 2)
    safeAddToDistribution("LivingRoomShelf", "FSB_B42.BookFitness5", 2)

    safeAddToDistribution("LivingRoomShelf", "FSB_B42.BookStrength1", 2)
    safeAddToDistribution("LivingRoomShelf", "FSB_B42.BookStrength2", 2)
    safeAddToDistribution("LivingRoomShelf", "FSB_B42.BookStrength3", 2)
    safeAddToDistribution("LivingRoomShelf", "FSB_B42.BookStrength4", 2)
    safeAddToDistribution("LivingRoomShelf", "FSB_B42.BookStrength5", 2)

    -- Escuelas
    safeAddToDistribution("SchoolLibraryBooks", "FSB_B42.BookFitness1", 3)
    safeAddToDistribution("SchoolLibraryBooks", "FSB_B42.BookFitness2", 3)
    safeAddToDistribution("SchoolLibraryBooks", "FSB_B42.BookFitness3", 3)
    safeAddToDistribution("SchoolLibraryBooks", "FSB_B42.BookFitness4", 3)
    safeAddToDistribution("SchoolLibraryBooks", "FSB_B42.BookFitness5", 3)

    safeAddToDistribution("SchoolLibraryBooks", "FSB_B42.BookStrength1", 3)
    safeAddToDistribution("SchoolLibraryBooks", "FSB_B42.BookStrength2", 3)
    safeAddToDistribution("SchoolLibraryBooks", "FSB_B42.BookStrength3", 3)
    safeAddToDistribution("SchoolLibraryBooks", "FSB_B42.BookStrength4", 3)
    safeAddToDistribution("SchoolLibraryBooks", "FSB_B42.BookStrength5", 3)
end

FSB.registerEvent("OnInitWorld", addBookLoot)
