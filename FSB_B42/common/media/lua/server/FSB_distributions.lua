local function addBookLoot()

    --------------------------------------------------
    -- 📚 LIBRERÍAS (spawn principal)
    --------------------------------------------------

    table.insert(Distributions["BookstoreBooks"].items, "FSB_B42.BookFitness1")
    table.insert(Distributions["BookstoreBooks"].items, 6)

    table.insert(Distributions["BookstoreBooks"].items, "FSB_B42.BookFitness2")
    table.insert(Distributions["BookstoreBooks"].items, 4)

    table.insert(Distributions["BookstoreBooks"].items, "FSB_B42.BookFitness3")
    table.insert(Distributions["BookstoreBooks"].items, 2)

    table.insert(Distributions["BookstoreBooks"].items, "FSB_B42.BookFitness4")
    table.insert(Distributions["BookstoreBooks"].items, 2)

    table.insert(Distributions["BookstoreBooks"].items, "FSB_B42.BookFitness5")
    table.insert(Distributions["BookstoreBooks"].items, 1)

    --------------------------------------------------
    -- 🏋️ STRENGTH
    --------------------------------------------------

    table.insert(Distributions["BookstoreBooks"].items, "FSB_B42.BookStrength1")
    table.insert(Distributions["BookstoreBooks"].items, 6)

    table.insert(Distributions["BookstoreBooks"].items, "FSB_B42.BookStrength2")
    table.insert(Distributions["BookstoreBooks"].items, 4)

    table.insert(Distributions["BookstoreBooks"].items, "FSB_B42.BookStrength3")
    table.insert(Distributions["BookstoreBooks"].items, 2)

    table.insert(Distributions["BookstoreBooks"].items, "FSB_B42.BookStrength4")
    table.insert(Distributions["BookstoreBooks"].items, 2)

    table.insert(Distributions["BookstoreBooks"].items, "FSB_B42.BookStrength5")
    table.insert(Distributions["BookstoreBooks"].items, 1)
end
-- casas
table.insert(Distributions["LivingRoomShelf"].items, "FSB_B42.BookFitness1")
table.insert(Distributions["LivingRoomShelf"].items, 2)
table.insert(Distributions["LivingRoomShelf"].items, "FSB_B42.BookFitness2")
table.insert(Distributions["LivingRoomShelf"].items, 2)
table.insert(Distributions["LivingRoomShelf"].items, "FSB_B42.BookFitness3")
table.insert(Distributions["LivingRoomShelf"].items, 2)
table.insert(Distributions["LivingRoomShelf"].items, "FSB_B42.BookFitness4")
table.insert(Distributions["LivingRoomShelf"].items, 2)
table.insert(Distributions["LivingRoomShelf"].items, "FSB_B42.BookFitness5")
table.insert(Distributions["LivingRoomShelf"].items, 2)
-- escuelas
table.insert(Distributions["SchoolLibraryBooks"].items, "FSB_B42.BookFitness1")
table.insert(Distributions["SchoolLibraryBooks"].items, 3)
table.insert(Distributions["SchoolLibraryBooks"].items, "FSB_B42.BookFitness2")
table.insert(Distributions["SchoolLibraryBooks"].items, 3)
table.insert(Distributions["SchoolLibraryBooks"].items, "FSB_B42.BookFitness3")
table.insert(Distributions["SchoolLibraryBooks"].items, 3)
table.insert(Distributions["SchoolLibraryBooks"].items, "FSB_B42.BookFitness4")
table.insert(Distributions["SchoolLibraryBooks"].items, 3)
table.insert(Distributions["SchoolLibraryBooks"].items, "FSB_B42.BookFitness5")
table.insert(Distributions["SchoolLibraryBooks"].items, 3)
Events.OnInitWorld.Add(addBookLoot)