-- Data section of the mod
local palettes = {
    unit = {
        name = "#82CAF6",
        tag = "#CFEBFC",
        level = "#D9E4CF",
    },
    action = {
        name = "#E5898C",
        tag = "#F5D2D3",
        level = "#D9E4CF",
    },
    item = {
        name = "#E5C367",
        tag = "#F5E8C5",
        level = "#D9E4CF",
    },
}

local images = {
    common = {
        background = "",
        nameBackground = "Sprites/Name Background.png",
        nameFrame = "Sprites/Name Frame.png",
        tagBackground = "Sprites/Tag Background.png",
        tagFrame = "Sprites/Tag Frame.png",
        border = "Sprites/Border.png",
        levelBackground = "Sprites/Diamond Background.png",
        levelBorder = "Sprites/Diamond Background Border.png",
        separator = "Sprites/Separator.png",
        frameWithLevel = "Sprites/Ability Frame Level.png",
        frameWithoutLevel = "Sprites/Ability Frame.png",
        dice = {
            d1 = "Sprites/D1.png",
            d2 = "Sprites/D2.png",
            d3 = "Sprites/D3.png",
            d4 = "Sprites/D4.png",
            d5 = "Sprites/D5.png",
            d6 = "Sprites/D6.png",
            dx = "Sprites/DX.png",
            dy = "Sprites/DY.png",
            dz = "Sprites/DZ.png",
        }
    },
}

local cards = {
    units = {
        ["units.common.kando"] = {
            name = "Kando",
            tag = "Unit",
            leveling = true,
            foreground = "",
            frame = "",
            palette = palettes.unit,
            abilities = {
                {
                    cost = { "5" },
                    description = "Reroll up to 1<sp>die.",
                },
                {
                    cost = { "5", "5" },
                    description = "Reroll up to 1<sp>die.<br>Deal 1<sp>damage.",
                },
                {
                    cost = { "5", "5", "5" },
                    description = "Deal 3<sp>damage.<br>Reroll any number of dice.",
                },
            },
            inventory = {
                "items.owned.kando.graycoppersword",
                "actions.owned.kando.focus",
            },
        },
        ["units.common.marasort"] = {
            name = "Marasort",
            tag = "Unit",
            leveling = true,
            foreground = "",
            frame = "",
            palette = palettes.unit,
            abilities = {
                {
                    cost = { "1", "2" },
                    description = "<dn>",
                },
                {
                    cost = { "2", "2" },
                    description = "Remove a die.<br>Deal 2<sp>damage.",
                },
                {
                    cost = { "1", "2", "2" },
                    description = "Remove one of these dice: Deal 2<sp>damage and gain 1<sp>gold.",
                },
            },
        },
        ["units.common.ann"] = {
            name = "Ann",
            tag = "Unit",
            leveling = true,
            foreground = "",
            frame = "",
            palette = palettes.unit,
            abilities = {
                {
                    cost = { "1", "3" },
                    description = "Reroll these dice.<br>Deal 1<sp>damage.",
                },
                {
                    cost = { "2", "4", "6" },
                    description = "Reroll these dice.<br>Deal 2<sp>damage.<br>Remove all charges from this unit.",
                },
            },
        },
        ["units.common.duramore"] = {
            name = "Duramore",
            tag = "Unit",
            leveling = true,
            foreground = "",
            frame = "",
            palette = palettes.unit,
            abilities = {
                {
                    cost = { "3", "4" },
                    description = "Remove one of these dice.<br>Deal 1<sp>damage.",
                },
                {
                    cost = { "3", "4" },
                    description = "Remove one of these dice.<br>Deal 1<sp>damage and reroll up to 1<sp>die.",
                },
                {
                    cost = { "3", "4" },
                    description = "Remove one of these dice.<br>Deal 1<sp>damage, then gain and roll 5<sp>dice.",
                },
            },
        },
        ["units.common.liozert"] = {
            name = "Liozert",
            tag = "Unit",
            leveling = true,
            foreground = "",
            frame = "",
            palette = palettes.unit,
            abilities = {
                {
                    cost = { "1" },
                    description = "<dn>",
                },
                {
                    cost = { "1", "1" },
                    description = "Decrement up to 2<sp>dice.",
                },
                {
                    cost = { "1", "1", "1", "1" },
                    description = "Deal 4 damage.<br>All opponents discard a<sp>card.",
                },
            },
        },
    },
    actions = {
        ["actions.starting.power"] = {
            name = "Power",
            tag = "Action",
            leveling = false,
            foreground = "",
            frame = "",
            palette = palettes.action,
            abilities = {
                {
                    cost = {},
                    description = "Gain and roll 3<sp>dice.",
                },
            },
        },
        ["actions.starting.precision"] = {
            name = "Precision",
            tag = "Action",
            leveling = false,
            foreground = "",
            frame = "",
            palette = palettes.action,
            abilities = {
                {
                    cost = {},
                    description = "Gain and roll a<sp>die.<br>Reroll up to 3<sp>dice.",
                },
            },
        },
        ["actions.starting.intellect"] = {
            name = "Intellect",
            tag = "Action",
            leveling = false,
            foreground = "",
            frame = "",
            palette = palettes.action,
            abilities = {
                {
                    cost = {},
                    description = "Reroll any number of dice.",
                },
            },
        },
        ["actions.shop.backup"] = {
            name = "Intellect",
            tag = "Action",
            leveling = false,
            foreground = "",
            frame = "",
            palette = palettes.action,
            abilities = {
                {
                    cost = {},
                    description = "Gain and roll a<sp>die>.<br>Refresh all units.",
                },
            },
        },
        ["actions.shop.mastery"] = {
            name = "Mastery",
            tag = "Action",
            leveling = false,
            foreground = "",
            frame = "",
            palette = palettes.action,
            abilities = {
                {
                    cost = {},
                    description = "Gain and roll 2<sp>dice.<br>Refresh an item.",
                },
            },
        },
        ["actions.shop.support"] = {
            name = "Support",
            tag = "Action",
            leveling = false,
            foreground = "",
            frame = "",
            palette = palettes.action,
            abilities = {
                {
                    cost = {},
                    description = "Move any number of charges from one unit to one or more units, divided as you chose.",
                },
            },
        },
    },
    items = {

    },
}

local styles = {
    name = {
        font = "Fonts/JosefinSans-Regular.ttf",
        color = "#000000ff",
        size = "3-15",
        spacing = {
            character = 0,
            word = 0,
            line = 0,
            paragraph = 0
        },
        wrapping = false,
        overflow = "Overflow",
        alignment = "Center",
    },
    tag = {
        font = "Fonts/JosefinSans-LightItalic.ttf",
        color = "#000000ff",
        size = "3-8",
        spacing = {
            character = 0,
            word = 0,
            line = 0,
            paragraph = 0
        },
        wrapping = false,
        overflow = "Overflow",
        alignment = "Center",
    },
    level = {
        font = "Fonts/Kalam-Bold.ttf",
        color = "#000000ff",
        size = "22",
        spacing = {
            character = 0,
            word = 0,
            line = 0,
            paragraph = 0
        },
        wrapping = false,
        overflow = "Overflow",
        alignment = "Center",
    },
    description = {
        font = "Fonts/JosefinSans-Regular.ttf",
        color = "#000000ff",
        size = "3-8.3",
        spacing = {
            character = 0,
            word = 0,
            line = 0,
            paragraph = 40
        },
        wrapping = true,
        overflow = "Overflow",
        alignment = "Left",
    },
}

local layoutGroups = {
    abilities = {
        orientation = "Vertical",
        padding = {
            left = 0,
            right = 0,
            top = 0,
            bottom = 0,
        },
        spacing = -7.42,
        childAlignment = "LowerCenter",
        reverseArrangment = true,
        controlChildSize = {
            width = false,
            height = false,
        },
        useChildScale = {
            width = false,
            height = false,
        },
        childForceExpand = {
            width = false,
            height = false,
        },
        contentSizeFitter = {
            horizontalFit = "Unconstrained",
            verticalFit = "PreferredSize",
        },
    },
    abilityStack = {
        orientation = "Horizontal",
        padding = {
            left = 0,
            right = 0,
            top = 0,
            bottom = 0,
        },
        spacing = 1.9,
        childAlignment = "MiddleLeft",
        reverseArrangment = false,
        controlChildSize = {
            width = true,
            height = true,
        },
        useChildScale = {
            width = false,
            height = false,
        },
        childForceExpand = {
            width = false,
            height = false,
        },
        contentSizeFitter = nil,
    },
    cost = {
        orientation = "Horizontal",
        padding = {
            left = 0,
            right = 0,
            top = 0,
            bottom = 0,
        },
        spacing = 0,
        childAlignment = "MiddleCenter",
        reverseArrangment = false,
        controlChildSize = {
            width = true,
            height = true,
        },
        useChildScale = {
            width = false,
            height = false,
        },
        childForceExpand = {
            width = false,
            height = false,
        },
        contentSizeFitter = nil,
    },
    costColumn ={
        orientation = "Vertical",
        padding = {
            left = 0,
            right = 0,
            top = 0,
            bottom = 0,
        },
        spacing = 0,
        childAlignment = "MiddleCenter",
        reverseArrangment = false,
        controlChildSize = {
            width = false,
            height = false,
        },
        useChildScale = {
            width = false,
            height = false,
        },
        childForceExpand = {
            width = false,
            height = false,
        },
        contentSizeFitter = nil,
    },
}

local layoutElements = {
    abilityLevel = {
        preferredWidth = 11.6,
        preferredHeight = 40.98752,
    },
    abilitySeparator = {
        preferredWidth = 4.95,
        preferredHeight = 43.43864,
    },
    abilityDescription = {
        flexibleWidth = 1,
        flexibleHeight = 1,
    },
}

-- Logic section of the mod
local generator = {
    addBackground = function(parent)
        local obj = lb.addObject("background", parent)
        lb.setImage(obj, images.common.background)
        lb.setSize(obj, 231.4, 331.3)
        return obj
    end,

    addName = function(parent)
        local obj = lb.addObject("name", parent)
        lb.setSize(obj, 170.43, 37.655)
        lb.setPosition(obj, 0, 141)
        return obj
    end,

    addNameBackground = function(parent, palette)
        local obj = lb.addObject("nameBackground", parent)
        lb.setImage(obj, images.common.nameBackground, palette.name)
        lb.setPosition(obj, 0.26, -1.3)
        lb.setSize(obj, 172.23, 39.413)
        return obj
    end,

    addNameFrame = function(parent)
        local obj = lb.addObject("nameFrame", parent)
        lb.setImage(obj, images.common.nameFrame)
        lb.setPosition(obj, 1.2, -8.3)
        lb.setSize(obj, 215.784, 60.8)
        lb.setAngle(obj, -0.42)
        return obj
    end,

    addNameText = function(parent, name)
        local obj = lb.addObject("nameText", parent)
        lb.setText(obj, name, styles.name)
        lb.setSize(obj, 156.5901, 25.19434)
        return obj
    end,

    addTag = function(parent)
        local obj = lb.addObject("tag", parent)
        lb.setSize(obj, 109.8994, 13.95798)
        lb.setPosition(obj, 0, 113.6)
        return obj
    end,

    addTagBackground = function(parent, palette)
        local obj = lb.addObject("tagBackground", parent)
        lb.setImage(obj, images.common.tagBackground, palette.tag)
        lb.setPosition(obj, -2.1648, 0)
        lb.setSize(obj, 114.2292, 15.44836)
        lb.setAngle(obj, 0.073)
        return obj
    end,

    addTagFrame = function(parent)
        local obj = lb.addObject("tagFrame", parent)
        lb.setImage(obj, images.common.tagFrame)
        lb.setPosition(obj, -3, 0)
        lb.setSize(obj, 120.3908, 18.61713)
        lb.setAngle(obj, -0.206)
        return obj
    end,

    addTagText = function(parent, tag)
        local obj = lb.addObject("tagText", parent)
        lb.setText(obj, tag, styles.tag)
        lb.setSize(obj, 156.5901, 25.19434)
        return obj
    end,

    addAbilities = function(parent)
        local obj = lb.addObject("abilities", parent)
        lb.setPosition(obj, 0, -160.8)
        lb.setSize(obj, 220.9605, 0)
        lb.setPivot(obj, 0.5, 0)
        lb.setLayoutGroup(obj, layoutGroups.abilities)
        return obj
    end,

    addBorder = function(parent)
        local obj = lb.addObject("border", parent)
        lb.setImage(obj, images.common.border)
        lb.setSize(obj, 250, 350)
        return obj
    end,

    abilities = {
        addAbilityParent = function(parent, level)
            local obj = lb.addObject("abilityParent" .. level, parent)
            lb.setSize(obj, 200.3109, 68.55927)
            return obj
        end,

        addAbilityStack = function(parent)
            local obj = lb.addObject("abilityHorizontalStack", parent)
            lb.setPosition(obj, 6.28, 2.88)
            lb.setSize(obj, 160.8446, 43.43863)
            lb.setLayoutGroup(obj, layoutGroups.abilityStack)
            return obj
        end,

        addLevel = function(parent)
            local obj = lb.addObject("level", parent)
            lb.setPivot(obj, 1, 0.5)
            lb.setAnchors(obj, 0, 1, 0, 1)
            lb.setLayoutElement(obj, layoutElements.abilityLevel)
            return obj
        end,

        addLevelBackground = function(parent, palette)
            local obj = lb.addObject("levelBackground", parent)
            lb.setImage(obj, images.common.levelBackground, palette.level)
            lb.setAnchoredPosition(obj, -15, 1.7)
            lb.setSize(obj, 34.90248, 36.12713)
            lb.setAngle(obj, -1.671)
            return obj
            end,

        addLevelBorder = function(parent, palette)
            local obj = lb.addObject("levelBorder", parent)
            lb.setImage(obj, images.common.levelBorder, palette.level)
            lb.setAnchoredPosition(obj, -15, 1.7)
            lb.setSize(obj, 34.90248, 36.12713)
            lb.setAngle(obj, -1.671)
            return obj
        end,

        addLevelText = function(parent, level)
            local obj = lb.addObject("levelText", parent)
            lb.setText(obj, level, styles.level)
            lb.setAnchoredPosition(obj, -15, 0)
            lb.setSize(obj, 37.59926, 34.12093)
            return obj
        end,

        addDiceParent = function(parent)
            local obj = lb.addObject("cost", parent)
            lb.setLayoutGroup(obj, layoutGroups.cost)
            return obj
        end,

        addDiceColumn = function(parent, index)
            local obj = lb.addObject("costColumn" .. index, parent)
            lb.setLayoutGroup(obj, layoutGroups.costColumn)
            return obj
        end,

        addDie = function (parent, index, cost)
            local obj = lb.addObject("die" .. index, parent)
            lb.setImage(obj, images.common.dice["d" .. cost])
            lb.setSize(obj, 20.52, 22.23)
            return obj
        end,

        addSeparatorParent = function(parent)
            local obj = lb.addObject("separatorParent", parent)
            lb.setLayoutElement(obj, layoutElements.abilitySeparator)
            return obj
        end,

        addSeparator = function(parent)
            local obj = lb.addObject("separator", parent)
            lb.setImage(obj, images.common.separator)
            lb.setSize(obj, 2.044425, 40.8885)
            return obj
        end,

        addDescriptionParent = function(parent)
            local obj = lb.addObject("descriptionParent", parent)
            lb.setLayoutElement(obj, layoutElements.abilityDescription)
            return obj
        end,

        addDescriptionText = function(parent, description)
            local obj = lb.addObject("description", parent)
            lb.setText(obj, description, styles.description)
            lb.setPivot(obj, 0, 0.5)
            lb.setAnchors(obj, 0, 0, 1, 1)
            lb.setSize(obj, -2.043747, -6.946342)
            lb.setAnchoredPosition(obj, 0.7300034, 0.004764557)
            return obj
        end,

        addFrames = function(parent)
            local obj = lb.addObject("frames", parent)
            lb.setAnchors(obj, 0, 0, 1, 1)
            lb.setSize(obj, 0, 0)
            lb.setAnchoredPosition(obj, 0, 0)
            return obj
        end,

        addFrameWithLevel = function(parent)
            local obj = lb.addObject("frameWithLevel", parent)
            lb.setImage(obj, images.common.frameWithLevel)
            lb.setPosition(obj, -7.4, 0)
            lb.setSize(obj, 200.9105, 61.20042)
            return obj
        end,

        addFrameWithoutLevel = function(parent)
            local obj = lb.addObject("frameWithoutLevel", parent)
            lb.setImage(obj, images.common.frameWithoutLevel)
            lb.setPosition(obj, 0.51, -0.14734)
            lb.setSize(obj, 186.8911, 60.90576)
            return obj
        end,

        addAbility = function(self, parent, card, level, ability)
            local abilityParent = self.addAbilityParent(parent, level)
            local abilityStack = self.addAbilityStack(abilityParent)

            local levelParent = self.addLevel(abilityStack)
            local levelBackground = self.addLevelBackground(levelParent, card.palette)
            local levelBorder = self.addLevelBorder(levelParent, card.palette)
            local levelText = self.addLevelText(levelParent, level)

            local diceParent = self.addDiceParent(abilityStack)
            local index
            local currentColumn
            for index = 1, #ability.cost do
                if (index % 2) == 1 then
                    currentColumn = self.addDiceColumn(diceParent, math.floor((index + 1) / 2))
                end
                self.addDie(currentColumn, index, ability.cost[index])
            end

            local separatorParent = self.addSeparatorParent(abilityStack)
            local separator = self.addSeparator(separatorParent)

            local descriptionParent = self.addDescriptionParent(abilityStack)
            local description = self.addDescriptionText(descriptionParent, ability.description)

            local framesParent = self.addFrames(abilityParent)
            local frameWithLevel = self.addFrameWithLevel(framesParent)
            local frameWithoutLevel = self.addFrameWithoutLevel(framesParent)
            
            lb.setActive(levelParent, card.leveling)
            lb.setActive(separatorParent, card.leveling)
            lb.setActive(frameWithLevel, card.leveling)
            lb.setActive(frameWithoutLevel, not card.leveling)
        end,
    },

    generate = function(self, root, card)
        if card == nil then
            return
        end

        local background = self.addBackground(root)
    
        local name = self.addName(root)
        local nameBackground = self.addNameBackground(name, card.palette)
        local nameFrame = self.addNameFrame(name)
        local nameText = self.addNameText(name, card.name)
    
        local tag = self.addTag(root)
        local tagBackground = self.addTagBackground(tag, card.palette)
        local tagFrame = self.addTagFrame(tag)
        local tagText = self.addTagText(tag, card.tag)
    
        local abilities = self.addAbilities(root)
        
        for index, ability in ipairs(card.abilities) do
            self.abilities:addAbility(abilities, card, index, ability)
        end
    
        local border = self.addBorder(root)    
    end
}

name = "dice crawler"

generate = function(root, cardId)
    local char = string.sub(cardId, 1, 1)
    if char == 'u' then
        generator:generate(root, cards.units[cardId])    
    elseif char == 'a' then
        generator:generate(root, cards.actions[cardId])    
    elseif char == 'i' then
        generator:generate(root, cards.items[cardId])    
    end
end

getIds = function()
    local list = {}
    for groupName, group in pairs(cards) do
        for id, card in pairs(group) do
            table.insert(list, id)
        end
    end
    return list
end
