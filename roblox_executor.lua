-- Roblox Executor Code Script  
-- A clean, dark, Proton-inspired UI for executing Lua Code  
local Executor = Instance.new('ScreenGui')  
local Frame = Instance.new('Frame')  
local TextBox = Instance.new('TextBox')  
local ExecuteButton = Instance.new('TextButton')  

-- Configure UI elements  
Executor.Name = 'Executor'  
Executor.Parent = game.CoreGui  

Frame.Name = 'MainFrame'  
Frame.Parent = Executor  
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)  
Frame.Position = UDim2.new(0.5, -200, 0.5, -150)  
Frame.Size = UDim2.new(0, 400, 0, 300)  

TextBox.Name = 'InputBox'  
TextBox.Parent = Frame  
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)  
TextBox.Size = UDim2.new(1, 0, 0, 50)  
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)  

ExecuteButton.Name = 'ExecuteBtn'  
ExecuteButton.Parent = Frame  
ExecuteButton.BackgroundColor3 = Color3.fromRGB(0, 170, 0)  
ExecuteButton.Position = UDim2.new(0.5, -50, 0, 60)  
ExecuteButton.Size = UDim2.new(0, 100, 0, 50)  
ExecuteButton.Text = 'Execute'  

-- Functionality to execute code  
ExecuteButton.MouseButton1Click:Connect(function()  
    local code = TextBox.Text  
    loadstring(code)()  
end)  

-- Inform user  
print('Roblox Executor Loaded. Ready to execute!')  
