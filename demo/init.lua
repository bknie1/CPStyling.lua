registerForEvent("onInit", function()
 	CPS = require "plugins.cyber_engine_tweaks.mods.test.CPStyle"
	print("CPStyling.lua loaded")
 	theme = CPS.theme
	print("Theme Loaded")
	draw = true
	wWidth, wHeight = GetDisplayResolution()
	checkboxdef = {
		{name = "My Checkbox1", value = false},
		{name = "My Checkbox2", value = true},
		{name = "My Checkbox3", value = false},
		{name = "My Checkbox4", value = true},
		{name = "My Checkbox5", value = false},
		{name = "My Checkbox6", value = false}
	}

	checkbox = {
		{name = "My Checkbox1", value = false},
		{name = "My Checkbox2", value = true},
		{name = "My Checkbox3", value = false},
		{name = "My Checkbox4", value = true},
		{name = "My Checkbox5", value = false},
		{name = "My Checkbox6", value = false}
	}
	cpcb_value = { false, true, false, false, true }
	cpcb_pressed = {}
	print("Initiated")
end)

registerForEvent("onUpdate", function()
	for i in pairs(checkbox) do
		if checkbox[i].pressed then
			print(checkbox[i].value)
		end
	end

	if cpbtn1 then cpcb_value = { false, true, false, false, true } end
	if btn1 then	cpcb_value = { true, true, true, false, true } end
	for i in pairs(cpcb_pressed) do
		if cpcb_pressed[i] then
			print(tostring(cpcb_value[i])..i)
		end
	end

end)

registerForEvent("onDraw", function()
	if draw then
		CPS.setThemeBegin()
		ImGui.Begin("CPStyling.lua Demo", true, ImGuiWindowFlags.MenuBar | ImGuiWindowFlags.NoResize)
		ImGui.SetWindowFontScale(1.0)
		ImGui.SetWindowPos(wWidth/2-250, wHeight/2-400, ImGuiCond.FirstUseEver)
		ImGui.SetWindowSize(500, 800)

-- MenuBar
		if ImGui.BeginMenuBar() then
			if ImGui.BeginMenu("File") then
				ImGui.SetWindowFontScale(1.0)
				ImGui.MenuItem("Open...", "Ctrl+O")
				ImGui.MenuItem("Save", "Ctrl+S")
				ImGui.MenuItem("Save as...", "Ctrl+Alt+S")
				ImGui.MenuItem("Exit", "Alt+F4")
				ImGui.EndMenu()
			end
			if ImGui.BeginMenu("Edit") then
				ImGui.SetWindowFontScale(1.0)
				ImGui.MenuItem("Undo", "Ctrl+Z")
				ImGui.MenuItem("Redo", "Ctrl+Y")
				ImGui.MenuItem("Copy", "Ctrl+C")
				ImGui.MenuItem("Paste", "Ctrl+V")
				ImGui.EndMenu()
			end
			if ImGui.BeginMenu("Help") then
				ImGui.SetWindowFontScale(1.0)
				ImGui.MenuItem("Help", "Ctrl+F1")
				ImGui.MenuItem("About")
				ImGui.MenuItem("Update")
				ImGui.EndMenu()
			end
			ImGui.EndMenuBar()
		end

-- TabBar
		if ImGui.BeginTabBar("Tabbar", ImGuiTabBarFlags.NoTooltip) then
			CPS.styleBegin("TabRounding", 0)
			if ImGui.BeginTabItem("Custom Widgets") then
				ImGui.Dummy(0,10)
				for i in pairs(checkbox) do
				checkbox[i].value, checkbox[i].pressed = ImGui.Checkbox(checkbox[i].name, checkbox[i].value)
				end

				ImGui.Spacing()
				ImGui.Separator()
				ImGui.Spacing()
-- CPS Button
				ImGui.Text("ImGui Button:") ImGui.SameLine(176) ImGui.Text("CPS Button:")
				btn1 = ImGui.Button("Set", 160, 30) ImGui.SameLine() cpbtn1 = CPS.CPButton("Reset", 160, 30)

				ImGui.Button("I'm a stretchy button", -1, 0)

-- CPS Toggle
				ImGui.Dummy(0,8)
				ImGui.Text("CPS Toggles:")
				for i in pairs(cpcb_value) do
					ImGui.PushID(i)
					cpcb_value[i], cpcb_pressed[i] = CPS.CPToggle("CP Checkbox"..i.." value: "..tostring(cpcb_value[i]), "OFF", "ON", cpcb_value[i], 200, ImGui.GetFontSize()*1.3)
					ImGui.PopID()
				end

-- CPS ToolTips
				ImGui.Dummy(0,8)
				ImGui.Text("CPS ToolTips:")
				ImGui.Button("Custom ToolTip", 160, 30)
				tab3hov = ImGui.IsItemHovered()
				ImGui.SameLine()
				ImGui.Button("Custom ToolTip2", 160, 30)
				tab3hov2 = ImGui.IsItemHovered()
				if tab3hov then
					CPS.CPToolTip1Begin(260, 220)
					ImGui.TextColored(0.79, 0.40, 0.29, 1, "SIDE JOB")
					ImGui.Spacing()
					CPS.colorBegin("Text", "00fdc4")
					ImGui.TextWrapped("Biz that won't make any major headlines: favors, straightforward tasks and chance encounters.")
					CPS.colorEnd(1)
					ImGui.Spacing()
					ImGui.Separator()
					ImGui.Spacing()
					ImGui.TextColored(0.68, 0.54, 0.55, 1, "DANGER: VERY LOW")
					ImGui.Spacing()
					ImGui.Separator()
					ImGui.Spacing()
					ImGui.Indent(10)
					CPS.CPRect("##circle1", 18, 26, "5df6ff", nil, 0, 13)
					ImGui.SameLine()
					ImGui.TextColored(0.36, 0.96, 1, 1, "TRACK JOB")
					CPS.CPRect("##circle2", 18, 26, "5df6ff", nil, 0, 13)
					ImGui.SameLine()
					ImGui.TextColored(0.36, 0.96, 1, 1, "ZOOM IN")
					CPS.CPToolTip1End()
				end
				if tab3hov2 then
					CPS.CPToolTip2Begin(340, 168)
					ImGui.TextColored(0.33, 0.86, 0.89, 1, "ASSAULT IN PROGRESS")
					ImGui.Spacing()
					ImGui.Separator()
					ImGui.TextColored(1, 1, 1, 1, "Neutralize the perps and secure evidence.")
					ImGui.Separator()
					ImGui.Spacing()
					ImGui.BeginGroup()
					CPS.colorBegin("ChildBg", theme.Hidden)
					ImGui.Indent(5)
					ImGui.BeginChild("NCPDlogoUP", 100, 50)
					ImGui.SetWindowFontScale(1.5)
					CPS.colorBegin("Text", "5ef5ff")
					CPS.CPRect("NCPD", 100, 35, {"1d3941",0.6}, "3e8c94", 2, 2)
					ImGui.SetCursorPosY(ImGui.GetCursorPosY()-8)
					CPS.CPRect("##NCPD2", 100, 15, {"3e8c94",0.9}, nil , 0, 50)
					ImGui.EndChild()
					ImGui.SetCursorPosY(ImGui.GetCursorPosY()-6)
					ImGui.BeginChild("NCPDscript", 100, 30)
					ImGui.SetWindowFontScale(0.42)
					ImGui.TextWrapped("DT AW S AD I AN A DF LW DSJ WA S DO WPA DJA WPSAA WPA D JA WWA S DO WPA WA S DO WPA")
					ImGui.EndChild()
					CPS.colorEnd(1)
					CPS.colorEnd(1)
					ImGui.EndGroup()
					ImGui.SameLine()
					ImGui.TextColored(0.68, 0.54, 0.55, 1, "DANGER: VERY LOW")
					CPS.CPToolTip2End()
				end

-- CPRect()
				ImGui.Dummy(0,8)
				ImGui.Text("CPRect():")
				CPS.CPRect("##Recdemo1", 50, 50 , { 0, 1, 0 , 1}, { 1, 0,0 ,1}, 2, 0)
				ImGui.SameLine()
				CPS.CPRect("##Recdemo2", 50, 30 , { 1, 1, 0 , 1}, nil , 0, 10)
				ImGui.SameLine()
				CPS.CPRect("##Recdemo3", 50, 50 , { 0, 1, 1 , 0.5}, nil , 0, 25)
				ImGui.SameLine()
				CPS.CPRect("Rect4##Recdemo4", 80, 50 , { 0, 0, 0 , 0}, {1,1,1,1} , 5, 80)


				ImGui.EndTabItem()
			end
			if ImGui.BeginTabItem("Default style") then
				ImGui.PushItemWidth(160)
				ImGui.InputText("Textbox", "Lorem ipsum dolor", 100, ImGuiInputTextFlags.AutoSelectAll)
				ImGui.InputTextWithHint("Textbox with hint", "Password...", "", 10, ImGuiInputTextFlags.Password)
				ImGui.InputFloat("Textbox float", 1.00000, 1, 10, "%.5f", ImGuiInputTextFlags.None)
				ImGui.SliderFloat("Slider float", 1.00000, -10, 10, "%.5fx", 0.5)
				ImGui.DragFloat("Drag float##2", 1.2354, 0.01, -10, 10, "%.5f", 0.5)
				ImGui.Combo("Combo box", 2, { "Option 1 ", "Option 2", "Option 3", "Option 4", "Option 5" }, 5, 3)
				if ImGui.ListBoxHeader("ListBox", 5) then
					ImGui.SetWindowFontScale(1.0)
					ImGui.Selectable("Selectable1", false)
					ImGui.Selectable("Selectable2", false)
					ImGui.Selectable("Selectable3", true)
					ImGui.Selectable("Selectable4", false)
					ImGui.Selectable("Selectable5", false)
					ImGui.ListBoxFooter()
				end
				ImGui.Checkbox("Checkbox##1", true) ImGui.SameLine() ImGui.Checkbox("Checkbox##2", false)
				ImGui.Spacing()
				ImGui.PopItemWidth()
				ImGui.EndTabItem()
			end
			if ImGui.BeginTabItem("setFrameThemeBegin()") then
				CPS.setFrameThemeBegin()
				ImGui.PushItemWidth(160)
				ImGui.InputText("Textbox##2", "Lorem ipsum dolor", 100, ImGuiInputTextFlags.AutoSelectAll)
				ImGui.InputTextWithHint("Textbox with hint##2", "Password...", "", 10, ImGuiInputTextFlags.Password)
				ImGui.InputFloat("Textbox float##2", 1.00000, 1, 10, "%.5f", ImGuiInputTextFlags.None)
				ImGui.SliderFloat("Slider float##2", 1.00000, -10, 10, "%.5fx", 0.5)
				ImGui.DragFloat("Drag float##2", 1.2354, 0.01, -10, 10, "%.5f", 0.5)
				ImGui.Combo("Combo box##2", 2, { "Option 1 ", "Option 2", "Option 3", "Option 4", "Option 5" }, 5, 3)
				if ImGui.ListBoxHeader("ListBox##2", 5) then
					ImGui.SetWindowFontScale(1.0)
					ImGui.Selectable("Selectable1##2", false)
					ImGui.Selectable("Selectable2##2", false)
					ImGui.Selectable("Selectable3##2", true)
					ImGui.Selectable("Selectable4##2", false)
					ImGui.Selectable("Selectable5##2", false)
					ImGui.ListBoxFooter()
				end
				ImGui.Checkbox("Checkbox##3", true) ImGui.SameLine() ImGui.Checkbox("Checkbox##4", false)

				ImGui.Spacing()
				CPS.CPRect("##rect1", 10, 200, {1,0,0,1}, nil, 0, 5)
				CPS.CPRect("##rect2", 200, 10, {1,1,0,1}, nil, 0, 2)
				ImGui.PopItemWidth()
				CPS.setFrameThemeEnd()
				ImGui.EndTabItem()
			end
			CPS.styleEnd(1)
			ImGui.EndTabBar()
		end

		ImGui.End()
		CPS.setThemeEnd()
	end
end)
