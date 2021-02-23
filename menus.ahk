; IllustratorMenu
	Menu, IllustratorMenu, Add, Paintbrush tool, BrushTool
	Menu, IllustratorMenu, Add, Blob brush tool, BlobBrushTool
	Menu, IllustratorMenu, Add, Eraser tool, EraserTool
	Menu, IllustratorMenu, Add, Eyedropper tool, EyedropperTool
	Menu, IllustratorMenu, Add, Swap fill/stroke, SwitchColors
	Menu, IllustratorMenu, Add, Selection tool, SelectionTool
	Menu, IllustratorMenu, Add, Direct selection tool, DirectSelectionTool
	Menu, IllustratorMenu, Add, Hand tool, HandTool, +BarBreak
	Menu, IllustratorMenu, Add, Zoom tool, ZoomTool
	Menu, IllustratorMenu, Add, Zoom to 100`%, Zoom100
	Menu, IllustratorMenu, Add, Reset view, ResetView
; PhotoshopMenu
		; PhotoshopSubmenuSelection
		Menu, PhotoshopSubmenuSelection, Add, Lasso, LassoTool
		Menu, PhotoshopSubmenuSelection, Add, Select all, SelectAll
		Menu, PhotoshopSubmenuSelection, Add, Select inverse, SelectInverse
		Menu, PhotoshopSubmenuSelection, Add, Quick mask mode, QuickMaskMode
		Menu, PhotoshopSubmenuSelection, Add, Deselect, Deselect
		; PhotoshopSubmenuBrush
		Menu, PhotoshopSubmenuBrush, Add, Brush panel, BrushPanel
		Menu, PhotoshopSubmenuBrush, Add, Brush, BrushTool
		Menu, PhotoshopSubmenuBrush, Add, Eraser, EraserTool
		Menu, PhotoshopSubmenuBrush, Add, Spot healing brush, SpotHealingBrushTool
		; PhotoshopSubmenuColor
		Menu, PhotoshopSubmenuColor, Add, Color panel, ColorPanel
		Menu, PhotoshopSubmenuColor, Add, Swatches, SwatchesPanel
		Menu, PhotoshopSubmenuColor, Add, Eyedropper, EyedropperTool
		Menu, PhotoshopSubmenuColor, Add, Switch FG/BG colors, SwitchColors
		Menu, PhotoshopSubmenuColor, Add, Default FG/BG colors, DefaultColors
		; PhotoshopSubmenuLayer
		Menu, PhotoshopSubmenuLayer, Add, Layers panel, LayersPanel
		Menu, PhotoshopSubmenuLayer, Add, Layers panel, LayersPanel
		Menu, PhotoshopSubmenuLayer, Add, New layer, NewLayer
		Menu, PhotoshopSubmenuLayer, Add, Lock/unlock layer, LockLayer
		Menu, PhotoshopSubmenuLayer, Add, Layer style, LayerStyle
		; PhotoshopSubmenuView
		Menu, PhotoshopSubmenuView, Add, Hand, HandTool
		Menu, PhotoshopSubmenuView, Add, Zoom, ZoomTool
		Menu, PhotoshopSubmenuView, Add, Rotate view, RotateViewTool
		Menu, PhotoshopSubmenuView, Add, Zoom to 100`%, Zoom100
		Menu, PhotoshopSubmenuView, Add, Zoom to fit, ResetView
		Menu, PhotoshopSubmenuView, Add, Toggle guides, ShowGuides
		Menu, PhotoshopSubmenuView, Add, Toggle grid, ShowGrid
		Menu, PhotoshopSubmenuView, Add, Toggle snap, Snap
	Menu, PhotoshopMenu, Add, Selection, :PhotoshopSubmenuSelection
	Menu, PhotoshopMenu, Add, Brush, :PhotoshopSubmenuBrush
	Menu, PhotoshopMenu, Add, Color, :PhotoshopSubmenuColor
	Menu, PhotoshopMenu, Add, Layer, :PhotoshopSubmenuLayer
	Menu, PhotoshopMenu, Add, View, :PhotoshopSubmenuView
	Menu, PhotoshopMenu, Add, Free transform, FreeTransform
	Menu, PhotoshopMenu, Add, Crop, CropTool
	Menu, PhotoshopMenu, Add, Fill, Fill
; Shortcuts
	; Panels
		BrushPanel:
			SendInput, {F5}
		Return
		ColorPanel:
			SendInput, {F6}
		Return
		LayersPanel:
			SendInput, {F7}
		Return
		SwatchesPanel:
			SendInput, !w{down 34}{Enter}
		Return
	; Tools
		BlobBrushTool:
			SendInput, +b
		Return
		BrushTool:
			SendInput, b
		Return
		CropTool:
			SendInput, c
		Return
		DefaultColors:
			SendInput, d
		Return
		DirectSelectionTool:
			SendInput, a
		Return
		EraserTool:
			SendInput, e
		Return
		FreeTransform:
			SendInput, ^t
		Return
		HandTool:
			SendInput, h
		Return
		QuickMaskMode:
			SendInput, q
		Return
		SpotHealingBrushTool:
			SendInput, j
		Return
		EyedropperTool:
			SendInput, i
		Return
		Fill:
			SendInput, +{F5}
		Return
		SwitchColors:
			SendInput, x
		Return
		LassoTool:
			SendInput, l
		Return
		ZoomTool:
			SendInput, z
		Return
		RotateViewTool:
			SendInput, r
		Return
		SelectionTool:
			SendInput, v
		Return
		SelectAll:
			SendInput, ^a
		Return
		SelectInverse:
			SendInput, +^i
		Return
		Deselect:
			SendInput, ^d
		Return
	; Application menu
		NewLayer:
			SendInput, ^+n
		Return
		LockLayer:
			SendInput, ^/
		Return
		LayerStyle:
			SendInput, !lyn
		Return
	; View
		Zoom100:
			SendInput, ^!0
		Return
		ResetView:
			SendInput, {Esc}{Esc}^0
		Return
		ShowGuides:
			SendInput, ^;
		Return
		ShowGrid:
			SendInput, ^'
		Return
		Snap:
			SendInput, +^;
; Set menu activation key for each applicable program
#c:: ; Cortana shortcut by default; must be manually disabled.
	if WinActive("ahk_class Photoshop")
		Menu, PhotoshopMenu, Show
	if WinActive("ahk_class illustrator")
		Menu, IllustratorMenu, Show
Return