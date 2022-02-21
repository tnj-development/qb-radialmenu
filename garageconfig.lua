
Garages = {
    ["alta"] = {
        label = "Alta Street Parking",
        blip = vector3(-297.69, -990.17, 30.47),
        showBlip = true
    },
    ["pillboxgarage"] = {
        label = "Pillbox Parking",
        blip = vector3(219.11, -802.36, 30.75),
        showBlip = true
    },
    ["pinkcage"] = {
        label = "Pinkcage Motel Parking",
        blip = vector3(277.09, -340.12, 44.31),
        showBlip = true
    },
    ["beach"] = {
        label = "Beach Parking",
        blip = vector3(-1184.75, -1493.11, 3.77),
        showBlip = true
    },
    ["vespucci"] = {
        label = "Vespucci Parking",
        blip = vector3(-1145.16, -745.46, 19.06),
        showBlip = true
    },
    ["senora"] = {
        label = "Senora Parking",
        blip = vector3(1929.88, 3260.73, 45.12),
        showBlip = true
    },
    ["paleto"] = {
        label = "Paleto Parking",
        blip = vector3(76.12, 6363.28, 31.23),
        showBlip = true
    },
}

HouseGarages = {}

GangGarages = {
    ["cartel"] = {
        label = "Cartel",
        -- takeVehicle = vector3(1407.18, 1118.04, 114.84),
        -- spawnPoint = vector4(1407.18, 1118.04, 114.84, 88.34),
        -- putVehicle = vector3(1407.18, 1118.04, 114.84),
        job = "cartel"
    },
}

JobGarages = {
    ["police"] = {
        label = "Police",
        job = "police"
    },
}

Depots = {
    ["hayesdepot"] = {
        label = "Hayes Depot",
        takeVehicle = vector4(491.0, -1314.69, 29.25, 304.5),
        showBlip = true
    }
}

AutoRespawn = true --True == auto respawn cars that are outside into your garage on script restart, false == does not put them into your garage and players have to go to the impound