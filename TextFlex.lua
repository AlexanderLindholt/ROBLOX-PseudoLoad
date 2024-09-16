--[[

  _______        _   ______ _           
 |__   __|      | | |  ____| |          
    | | _____  _| |_| |__  | | _____  __
    | |/ _ \ \/ / __|  __| | |/ _ \ \/ /
    | |  __/>  <| |_| |    | |  __/>  < 
    |_|\___/_/\_\\__|_|    |_|\___/_/\_\
 - IntoDev

A very simple, lightweight, custom text rendering tool for ROBLOX.


--------------------------------------------------------------------------------
MIT License

Copyright (c) 2024 IntoDev

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
--------------------------------------------------------------------------------

]]--

local TextService = game:GetService("TextService")

export type moduleType = {
	Render: (frame: Frame, size: number, lineHeight: number, font: Font, color: Color3, text: string) -> nil,
}

local module = {}

function module.Render(frame: Frame, size: number, lineHeight: number, font: Font, color: Color3, text: string)
	if text == "" then return end
	
	-- Calculate information
	local textBoundsParams = Instance.new("GetTextBoundsParams")
	textBoundsParams.Size = size
	textBoundsParams.Font = font
	
	local frameWidth = frame.AbsoluteSize.X
	
	if lineHeight < 0 then
		lineHeight = 0
	else
		lineHeight *= size
	end
	if typeof(color) ~= "Color3" then
		color = Color3.fromRGB(0, 0, 0)
	end
	
	textBoundsParams.Text = " "
	local spaceWidth = TextService:GetTextBoundsAsync(textBoundsParams).X
	
	local x = 0
	local y = 0
	local words = text:split(" ")
	for index, word in ipairs(words) do
		local characters = {}
		local originalCharacters = word:split("")
		for index, character in ipairs(originalCharacters) do
			textBoundsParams.Text = character
			local width = TextService:GetTextBoundsAsync(textBoundsParams).X
			if x + width > frameWidth then
				y += lineHeight
				x = 0
				for _, info in ipairs(characters) do
					info.Y = y
					info.X = x
					x += info.Width
				end
			end
			table.insert(characters, {Character = character, X = x, Y = y, Width = width})
			x += width
		end
		
		words[index] = characters
		x += spaceWidth
	end
	
	-- Render text
	for index, characters in ipairs(words) do
		local folder = Instance.new("Folder")
		folder.Name = tostring(index)
		folder.Parent = frame
		for index, info in ipairs(characters) do
			local label = Instance.new("TextLabel")
			label.Text = info.Character
			label.TextSize = size
			label.FontFace = font
			label.Size = UDim2.fromOffset(info.Width, size)
			label.Position = UDim2.fromOffset(info.X, info.Y)
			label.TextColor3 = color
			label.BackgroundTransparency = 1
			label.Name = tostring(index)
			label.Parent = folder
		end
	end
end

return module :: moduleType