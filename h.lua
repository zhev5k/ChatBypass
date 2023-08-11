local player = game.Players.LocalPlayer

-- Ссылка на новое лицо
local newFaceId = "rbxassetid://5436304966"

-- Функция для изменения лица
local function changeFace()
    -- Проверяем, есть ли у игрока персонаж
    local character = player.Character
    if character then
        -- Получаем голову персонажа
        local head = character:FindFirstChild("Head")
        if head then
            -- Создаем новую текстуру лица
            local newFace = Instance.new("Decal")
            newFace.Texture = newFaceId
            
            -- Удаляем старую текстуру лица
            local oldFace = head:FindFirstChild("face")
            if oldFace then
                oldFace:Destroy()
            end
            
            -- Добавляем новую текстуру лица к голове
            newFace.Parent = head
            newFace.Name = "face"
        end
    end
end

-- Вызываем функцию при загрузке LocalScript
changeFace()