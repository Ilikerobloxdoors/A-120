local Creator = loadstring(game:HttpGet(
    "https://pastebin.com/raw/0fSnvfGt"
))()

local entity = Creator.createEntity({
    CustomName = "A-120",

    Model = "https://raw.githubusercontent.com/plamen6789/DoorsEntityModels/main/A-120.rbxm",

    Speed = 175,
    DelayTime = 3.5,

    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,

    BreakLights = false,
    BackwardsMovement = true,

    FlickerLights = {
        true,
        1.3,
    },

    Cycles = {
        Min = 1,
        Max = 3,
        WaitTime = 0.3,
    },

    CamShake = {
        true,
        {3.5, 15, 0.3, 1.5},
        100,
    },

    Jumpscare = {
        false,
        {
            Image1 = "",
            Image2 = "",

            Shake = false,

            Sound1 = {
                0,
                {Volume = 0},
            },

            Sound2 = {
                0,
                {Volume = 0},
            },

            Flashing = {
                false,
                Color3.fromRGB(255, 255, 255),
            },

            Tease = {
                false,
                Min = 0,
                Max = 0,
            },
        },
    },

    CustomDialog = {
        "You died to A-120...",
    },
})

entity.Debug.OnEntitySpawned = function(entityTable)
    print("A-120 spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("A-120 despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("A-120 started moving")
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("A-120 finished rebound")
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("A-120 entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at A-120")
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player died to A-120")
end

Creator.runEntity(entity)
