[ENABLE]
{$lua}
if syntaxcheck then return end

local items = {
"e92e4dad-8e96-4f27-aacb-cc430df0bc75",
"b307af36-a2da-4c01-aac3-a31771edd407"
    }

    local cmdCall = getAddress("cmdCall")
    local cmdArgs = getAddress("cmdArgs")
    local cmdStr1 = getAddress("cmdStr1")

    for i = 1, #items do
        local uuid = items[i]

        PrepareCall("GetHostCharacter")
        executeCodeEx(0, nil, cmdCall)

        PrepareCall("GetPosition")
        executeCodeEx(0, nil, cmdCall)

        PrepareCall("CreateAt")
        writePointer(cmdArgs + 0x08, cmdStr1)
        writeString(cmdStr1, uuid)
        writeBytes(cmdStr1 + #uuid, 0)
        writeQword(cmdArgs + 0x48, 0)
        writeQword(cmdArgs + 0x58, 0)
        writeQword(cmdArgs + 0x68, 0)
        executeCodeEx(0, nil, cmdCall)
end
{$asm}
assert(true)
[DISABLE]


---
--- Romance
print(GetFlag(" REPLACE_ME_WITH_A_FLAG_BELOW" , GetHostCharacter()))

print(GetFlag("ORI_State_DatingKarlach_f24c3f3e-7287- 4908-84bf-ba314921f5ee" , GetHostCharacter()))

ORI_State_DatingKarlach_f24c3f3e-7287- 4908-84bf-ba314921f5ee
ORI_State_PartneredWithKarlach_d9ff60fa-0af9-45d7-99b4-bd7c3f80ed12
SetFlag( "REPLACE_ME_WITH_A_FLAG_BELOW" , GetHostCharacter())

SetFlag( "ORI_State_DatingKarlach_f24c3f3e-7287- 4908-84bf-ba314921f5ee" , GetHostCharacter())



SetFlag( "ORI_State_PartneredWithKarlach_d9ff60fa-0af9-45d7-99b4-bd7c3f80ed12" , GetHostCharacter())
print(GetFlag("ORI_State_PartneredWithKarlach_d9ff60fa-0af9-45d7-99b4-bd7c3f80ed12" , GetHostCharacter()))

ORI_State_DatingGale_75d0e041-c16c-d 089-6d89- 64354fa4c9d9
ORI_State_DatingLaezel_86eaa84a-350b-401b-8b43-b53eeb534579
ORI_State_DatingAstarion_ba298c56-26b6-4918-9bd4-616668d369d8
ORI_State_DatingShadowheart_e87f1e21-a758-47ae-8c0e-9e715eb289b5
ORI_State_DatingWithWyll_f1520748-1d36-4500-9f8a-0da4207f8dd5
ORI_State_DatingMinthara_de1360cd-894b-40ea-95a7-1166d675d040
ORI_State_DatingKarlach_f24c3f3e-7287- 4908-84bf-ba314921f5ee
ORI_State_PartneredWithAstarion_30819c8d-b39d-42e7-acd1-2a8c2c309994
ORI_State_PartneredWithShadowheart_3808ae35-ad4e-465b-800b-63d32b77211e
ORI_State_PartneredWithWyll_5db4c1b6-3c42-43ae-aa85-1844acbf5a1d
ORI_State_PartneredWithLaezel_d169a786-6e56-4f0d-a2eb-33c48d8d1160
ORI_State_PartneredWithGale_e008e20d-d642-42ed-9008-297b6273aa21
ORI_State_PartneredWithMinthara_39ac48fa-b440-47e6 -a436-6dc9b10058d8
ORI_State_PartneredWithHalsin_7b53fe60-bb16-48a9-ae5c-9bce1dfac1a9
ORI_State_PartneredWithKarlach_d9ff60fa-0af9-45d7-99b4-bd7c3f80ed12

And, you may want to clear these flags when fixing things
OR I_State_WasPartneredWithGale_60e14eb3-cce6-43c3-b893-b9b687e3d88f
ORI_State_WasPartneredWithWyll_2652ff35-a62d-4947-b14b-11050ccfd329
ORI_State_WasPartneredWithAstarion_5a60943f-979b-4120-9b60-9e9b29529402
ORI_State_WasPartneredWithKarlach_48f2a4d4-23f4-4514-b894-e225152d7a48
ORI_State_WasPartneredWithShadowheart_542e6cf4-bfd1-471d-b4b5-693d630376cb
ORI_State_WasPartneredWithLaezel_6d402d9b-7af9-43ea-b0eb-98e9612dde27
ORI_State_WasPartneredWithMinthara_8d0460d6-b00a-4947 -bbd0-ad0c085a530f
ORI_State_WasPartneredWithHalsin_ee6b727d-243e-4189-b572-1d782ea78df8
--- Romance


-- Sorcerer Build
[ENABLE]
{$lua}
if syntaxcheck then return end

local items = {
    "7e39ad11-f8c3-421a-940c-05348c420c7d",
    "4f313dde-14bb-43a2-abdd-07b2eb38b33a",
    "2f2d4bf3-6a14-43f5-81fe-e14aa9871215",
    "bc3c8375-bad5-4f02-b1f3-2261cea690aa",
    "65c65d78-1786-4a78-9a43-96c19849b6f3",
    "ad602275-a76f-4937-bef4-6955c2850ae8",
    "70893b6f-b0de-4f4e-af9f-f10e2c09bd1e",
    "49c2d3d1-f489-4433-8f9a-bdef766ee9f1",
    "7d4b8a5c-7748-4021-a760-4bf646518a88",
    "ac9145d1-31d0-4aa3-8755-62cc85dad22b",
    "4b1b3dcd-dcbc-4a93-a848-f16510d76d82",
    "6c2e4f84-a8f2-4a91-81bf-488b497718a2",
    "56906f41-61a3-4c23-aa46-2295e08d9add",
    "adbd02c8-ee1e-4c0f-9688-78be9b98415a",
    "42e6357a-4c05-4eda-9415-6b6b4c7d44c5",
    "f3d8ff49-eaac-4c10-9421-3fd2180c7b39",
    "58c9bc94-b0ac-4ab9-a005-28cc445186f8",
    "c5a627ff-7fc5-4cde-81ca-e4fb57cb38d6",
    "5cd6935a-4be9-4018-9fc2-e340b96ac519"
}

local cmdCall = getAddress("cmdCall")
local cmdArgs = getAddress("cmdArgs")
local cmdStr1 = getAddress("cmdStr1")

for i = 1, #items do
    local uuid = items[i]

    PrepareCall("GetHostCharacter")
    executeCodeEx(0, nil, cmdCall)

    PrepareCall("GetPosition")
    executeCodeEx(0, nil, cmdCall)

    PrepareCall("CreateAt")
    writePointer(cmdArgs + 0x08, cmdStr1)
    writeString(cmdStr1, uuid)
    writeBytes(cmdStr1 + #uuid, 0)
    writeQword(cmdArgs + 0x48, 0)
    writeQword(cmdArgs + 0x58, 0)
    writeQword(cmdArgs + 0x68, 0)
    executeCodeEx(0, nil, cmdCall)
end
{$asm}
assert(true)
[DISABLE]
---
{$lua}
if syntaxcheck then return end
[ENABLE]
local items = {
    "1e64badf-4898-4169-9b02-3910518dc73d",
    "9481aa27-ce9c-414c-84ff-5e974fd64d89",
    "687cc55b-77a3-4893-a7d7-cfbafdc2737c",
    "fef0dda1-1d06-45b5-a302-a31e545b8ede",
    "935f9927-2df0-4a8d-a831-b7cb5bbbcae3",
    "139b28dc-7db0-40b2-a383-3a4ce4c09812",
    "5ff8df3a-6924-4eb4-9d1a-9e87bd644bf7",
    "5b4b10cd-089f-4675-8392-5bfa6749d79c",
    "e36702e9-10e5-4964-b254-7ff0659f9bb5",
    "a1eb910c-0090-4c50-a1cb-a35cbe8c80f2",
    "5efe9bb8-bffe-4c91-bbd6-bee4d5d0611c",
    "7e81bb6a-f465-4fe9-b1db-7ce6198246ba",
    "f8578a13-a857-4043-91e4-8101c9e7c004",
    "269b2b03-aaaf-4635-98e2-e9b32dab5ffa",
    "bc3c8375-bad5-4f02-b1f3-2261cea690aa",
    "65c65d78-1786-4a78-9a43-96c19849b6f3",
    "ad602275-a76f-4937-bef4-6955c2850ae8",
    "bc82f909-ade5-4ada-9b94-cec7ca1d4a68",
    "ad219a90-ab3d-4821-8206-011293f5837b",
    "1c198060-6b6a-41c5-82ce-a3d3c3d76404",
    "7ae705fd-1cfd-4482-a584-d2e68f9c1262",
    "74ecc6e4-ee5d-4cd8-96cb-dd677a4acc82",
    "a189686a-cfcf-4157-9c18-f7a8e7f0be87",
    "e925fb75-96a5-4634-9e0b-a239e48da115",
    "b2de6dee-50c1-45b9-b35d-7d5e8d53135f",
    "d943c31f-a8c9-49b0-8eba-f120b5075a67",
    "bf4700bb-f1db-4586-8332-4e3e0c3e0fe0",
    "aa0917ea-5f66-4a22-97de-654228484128",
    "aa6044d3-2721-4f92-95e0-2dfe2ac20ed7",
    "4b30a649-fd88-4f64-a57b-1149d7b9ac41",
    "8494f6d9-d588-4d18-bb0d-c5a58e911771",
    "6afe0665-ef74-44bb-916a-fb00a267b4b9",
    "9fecf84d-911f-4986-9454-0429ac437f45",
    "d19364cf-18f9-4841-919b-1e3f0ba2c58c",
    "0ec7d956-e65f-4bfa-b677-22f399f81a32",
    "f328179e-f5e1-4fd4-bd41-efad411223e8",
    "6d076cab-f23a-4a80-89b6-107be7f345bd",
    "5cdc0fe0-dbda-4f31-89f8-9e16782daef1",
    "1cb3fb1b-2dfc-446a-9c9b-666eb0de05d6",
    "1dc7ff19-a089-4289-8a4f-77c4be1c229d",
    "d692d48f-9a39-4001-8a38-c01e397953dc",
    "50a2cef0-8e1b-4166-ac15-06f8bde59e29",
    "3caad2f1-719f-4070-b7f0-887c49c773d3",
    "7d989a9c-ab69-43e0-8fca-02b13d254ae2",
    "78063154-288f-41aa-a99f-e56cbf601129",
    "9ebb9117-a0ae-46f2-a243-8d67650e9586",
    "305718fa-de30-474f-97a8-41ae79b4919e",
    "d40b567d-6b66-447e-8923-2bbd0d7aea00",
    "7efbf614-e004-4e64-b39e-c7928e703b8b",
    "e1797af7-5459-4db2-99da-5703fa203edb",
    "5fa043bf-0445-49ad-9e82-0df77c639fe2",
    "82c84433-0464-442a-8e5a-0891d829f99a",
    "91259e65-dd71-4312-ba3c-c55757978788",
    "e865db4c-4df3-48e9-8cf3-5abad75510ba",
    "185ab1be-e93d-4518-b053-d6d4d7168d68",
    "48a3ffbe-f14e-4cfe-b45e-ebadb3af0fd4",
    "73874ef8-a3c4-4a68-8d2a-ed3d580dfb52",
    "b460bd0c-58fe-4a56-831c-af92fd4ba7e2",
    "498c155f-8675-4a55-9cb0-89dd7270469f",
    "1930ceec-4a50-43d9-8589-94593c449be4",
    "0d0d9c0f-e9aa-4ba4-a0a9-1a0b7b7069ca",
    "5c79e518-2c59-41c5-84a7-d43a58e76d09",
    "5cd6935a-4be9-4018-9fc2-e340b96ac519"
}
for i = 1, #items do
    local item = items[i]

    TemplateAddToPlayer(item, 1)
end
[DISABLE]
--- Nector Build
{$lua}
if syntaxcheck then return end
[ENABLE]
local items = {
    "d6ee2594-7373-4fed-a167-f9d95cb4ecfd",
    "5ed63342-30c9-456d-9a57-a88c8596c0c9",
    "58c9bc94-b0ac-4ab9-a005-28cc445186f8",
    "f3d8ff49-eaac-4c10-9421-3fd2180c7b39",
    "d2a4e407-b5de-4f0b-ab7a-75f9bf5041dd",
    "fb2ff6d1-3096-4904-813c-a448e3fbec4d",
    "6cb88e48-70ce-4304-b3b6-db52d1880bec",
    "ecb02247-a407-445e-8046-856133d198bf",
    "1dc7ff19-a089-4289-8a4f-77c4be1c229d",
    "e865db4c-4df3-48e9-8cf3-5abad75510ba",
    "e865db4c-4df3-48e9-8cf3-5abad75510ba",
    "e865db4c-4df3-48e9-8cf3-5abad75510ba",
    "54de4a07-c57c-421e-912c-7e8bd93ca0c4",
    "54de4a07-c57c-421e-912c-7e8bd93ca0c4",
}
for i = 1, #items do
    local item = items[i]

    TemplateAddToPlayer(item, 1)
end
[DISABLE]

--- Blackguard Build
{$lua}
if syntaxcheck then return end
[ENABLE]
local items = {
    "2f2d4bf3-6a14-43f5-81fe-e14aa9871215", -- Killer's Sweetheart
    "269b2b03-aaaf-4635-98e2-e9b32dab5ffa",--MAG_DeadShot_Longbow (The Dead Shot)
    "bc3c8375-bad5-4f02-b1f3-2261cea690aa",--MAG_Deathknight_Boots (Blackguard's Greaves)
    "65c65d78-1786-4a78-9a43-96c19849b6f3",--MAG_Deathknight_Gloves (Blackguard's Gauntlets)
    "ad602275-a76f-4937-bef4-6955c2850ae8",--MAG_Deathknight_Helmet (Blackguard's Helm)
    "0a11f6f4-5605-4dff-a3e6-b172e4dba555",--MAG_OB_Paladin_DeathKnight_Longsword (Blackguard's Sword)
    "1109da0a-2d12-4ed3-a93a-fe369023ead3",--MAG_Plate_Deathknight_Armor (Blackguard's Plate)
}
for i = 1, #items do
    local item = items[i]

    TemplateAddToPlayer(item, 1)
end
[DISABLE]


--- New Loot
Disintegrating Night Walkers -- https://bg3.wiki/wiki/Disintegrating_Night_Walkers
Evasive Shoes -- https://bg3.wiki/wiki/Evasive_Shoes
Gloves of Dexterity -- https://bg3.wiki/wiki/Gloves_of_Dexterity
Gauntlet of the Tyrant -- https://bg3.wiki/wiki/Gauntlet_of_the_Tyrant
Abyss Beckoners -- https://bg3.wiki/wiki/Abyss_Beckoners
Gloves of The Duellist -- https://bg3.wiki/wiki/Gloves_of_The_Duellist
Warped Headband of Intellect -- https://bg3.wiki/wiki/Warped_Headband_of_Intellect
Key of the Ancients -- https://bg3.wiki/wiki/Key_of_the_Ancients
Cloak of Protection -- https://bg3.wiki/wiki/Cloak_of_Protection
Glimmergad's Selgaunt Fiddle -- https://bg3.wiki/wiki/Glimmergad%27s_Selgaunt_Fiddle
Dostrealt's Piccolo -- https://bg3.wiki/wiki/Dostrealt%27s_Piccolo
Ring of Regeneration -- https://bg3.wiki/wiki/Ring_of_Regeneration
True Love's Embrace -- https://bg3.wiki/wiki/True_Love%27s_Embrace
True Love's Caress -- https://bg3.wiki/wiki/True_Love%27s_Caress
Ring of Protection -- https://bg3.wiki/wiki/Ring_of_Protection
Coruscation Ring -- https://bg3.wiki/wiki/Coruscation_Ring
Caustic Band -- https://bg3.wiki/wiki/Caustic_Band
Amulet of Greater Health -- https://bg3.wiki/wiki/Amulet_of_Greater_Health
Elixir of Barkskin -- https://bg3.wiki/wiki/Elixir_of_Barkskin
Elixir of Cloud Giant Strength -- https://bg3.wiki/wiki/Elixir_of_Cloud_Giant_Strength
Supreme Elixir of Arcane Cultivation -- https://bg3.wiki/wiki/Supreme_Elixir_of_Arcane_Cultivation
Opalescent Outfit -- https://bg3.wiki/wiki/Opalescent_Outfit
Elegant Robe -- https://bg3.wiki/wiki/Elegant_Robe
Mesmerising Circus Outfit -- https://bg3.wiki/wiki/Mesmerising_Circus_Outfit
Drow Outfit -- https://bg3.wiki/wiki/Drow_Outfit
Magical Hand Crossbow -- https://bg3.wiki/wiki/Magical_Hand_Crossbow
Hellfire Hand Crossbow -- https://bg3.wiki/wiki/Hellfire_Hand_Crossbow
Drakethroat Glaive -- https://bg3.wiki/wiki/Drakethroat_Glaive
Battle-Worn Blade -- https://bg3.wiki/wiki/Battle-Worn_Blade
Phalar Aluve -- https://bg3.wiki/wiki/Phalar_Aluve

Diadem of Arcane Synergy -- https://bg3.wiki/wiki/Diadem_of_Arcane_Synergy
Ring of Arcane Synergy -- https://bg3.wiki/wiki/Ring_of_Arcane_Synergy

Supply Pack -- https://bg3.wiki/wiki/Supply_Pack
Owlbear Egg -- https://bg3.wiki/wiki/Owlbear_Egg

Dark Amethyst Dye -- https://bg3.wiki/wiki/Dark_Amethyst_Dye
Sinful Red on Bone White -- https://bg3.wiki/wiki/Sinful_Red_on_Bone_White

--- SunBuild
Luminous Gloves -- https://bg3.wiki/wiki/Luminous_Gloves
The Sacred Star -- https://bg3.wiki/wiki/The_Sacred_Star
Luminous Armour -- https://bg3.wiki/wiki/Luminous_Armour
Fabricated Arbalest -- https://bg3.wiki/wiki/Fabricated_Arbalest
Coruscation Ring -- https://bg3.wiki/wiki/Coruscation_Ring
Callous Glow Ring -- https://bg3.wiki/wiki/Callous_Glow_Ring
Holy Lance Helm -- https://bg3.wiki/wiki/Holy_Lance_Helm

--- Crit Farm
Shade-Slayer Cloak -- https://bg3.wiki/wiki/Shade-Slayer_Cloak

--- Reverberation - DONE
Gloves of Belligerent Skies -- https://bg3.wiki/wiki/Gloves_of_Belligerent_Skies
Boots of Stormy Clamour -- https://bg3.wiki/wiki/Boots_of_Stormy_Clamour
Ring of Absolute Force -- https://bg3.wiki/wiki/Ring_of_Absolute_Force
Thunderskin Cloak -- https://bg3.wiki/wiki/Thunderskin_Cloak
Ring of Spiteful Thunder -- https://bg3.wiki/wiki/Ring_of_Spiteful_Thunder
Phalar Aluve -- https://bg3.wiki/wiki/Phalar_Aluve

--- Healer's Kit
Ring of Salving -- https://bg3.wiki/wiki/Ring_of_Salving
The Whispering Promise -- https://bg3.wiki/wiki/The_Whispering_Promise

--- Elementalist
Ring of Elemental Infusion -- https://bg3.wiki/wiki/Ring_of_Elemental_Infusion
Necklace of Elemental Augmentation -- https://bg3.wiki/wiki/Necklace_of_Elemental_Augmentation
Amulet of Elemental Tormen -- https://bg3.wiki/wiki/Amulet_of_Elemental_Tormen

--- Thrower Set
Ring of Salving -- https://bg3.wiki/wiki/Ring_of_Salving
Returning Pike -- https://bg3.wiki/wiki/Returning_Pike
Gloves of Archery -- https://bg3.wiki/wiki/Gloves_of_Archery
"6d84b9e5-e9e4-477c-8d5b-a3f232a4415a",--UNI_ARM_OfArchery_Gloves (Gloves of Archery)

--- Monker
Sentient Amulet (Very Rare) -- https://bg3.wiki/wiki/Sentient_Amulet_(Very_Rare)
Sentient Amulet (Rare) -- https://bg3.wiki/wiki/Sentient_Amulet_(Rare)

--- Black Panther
Rippling Force Mail -- https://bg3.wiki/wiki/Rippling_Force_Mail
Swires' Sledboard -- https://bg3.wiki/wiki/Swires%27_Sledboard
The Skinburster -- https://bg3.wiki/wiki/The_Skinburster

--- Gith Set
Voss' Silver Sword -- https://bg3.wiki/wiki/Voss%27_Silver_Sword

--- containers
Stuffed Bear (Container) -- https://bg3.wiki/wiki/Stuffed_Bear_(Container)
Bucket of Fish -- https://bg3.wiki/wiki/Bucket_of_Fish
Looters' Trunk -- https://bg3.wiki/wiki/Looters%27_Trunk
Cartilaginous Chest -- https://bg3.wiki/wiki/Cartilaginous_Chest
Patched-Together Sack -- https://bg3.wiki/wiki/Patched-Together_Sack
Elaborate Reliquary -- https://bg3.wiki/wiki/Elaborate_Reliquary