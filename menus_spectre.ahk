; IllustratorMenu
Menu, IllustratorMenu, Add, Paintbrush tool, BrushTool
Menu, IllustratorMenu, Add, Blob brush tool, BlobBrushTool
Menu, IllustratorMenu, Add, Eraser tool, EraserTool
Menu, IllustratorMenu, Add, Eyedropper tool, EyedropperTool
Menu, IllustratorMenu, Add, Swap fill/stroke, SwitchColors
Menu, IllustratorMenu, Add, Selection tool, SelectionTool
Menu, IllustratorMenu, Add, Direct selection tool, DirectSelectionTool
Menu, IllustratorMenu, Add, Zoom tool, ZoomTool, +BarBreak
Menu, IllustratorMenu, Add, Zoom to 100`%, Zoom100
Menu, IllustratorMenu, Add, Reset view, ResetView

; PhotoshopMenu
Menu, PhotoshopMenu, Add, Brush tool, BrushTool
Menu, PhotoshopMenu, Add, Eraser tool, EraserTool
Menu, PhotoshopMenu, Add, Spot healing brush tool, SpotHealingBrushTool
Menu, PhotoshopMenu, Add, Eyedropper tool, EyedropperTool
Menu, PhotoshopMenu, Add, Switch FG/BG Colors, SwitchColors
Menu, PhotoshopMenu, Add, Lasso tool, LassoTool
Menu, PhotoshopMenu, Add, Zoom tool, ZoomTool, +BarBreak
Menu, PhotoshopMenu, Add, Rotate view tool, RotateViewTool
Menu, PhotoshopMenu, Add, Zoom to 100`%, Zoom100
Menu, PhotoshopMenu, Add, Reset view, ResetView

BlobBrushTool:
	Send, +b
Return

BrushTool:
	Send, b
Return

DirectSelectionTool:
	Send, a
Return

EraserTool:
	Send, e
Return

SpotHealingBrushTool:
	Send, j
Return

EyedropperTool:
	Send, i
Return

SwitchColors:
	Send, x
Return

LassoTool:
	Send, l
Return

ZoomTool:
	Send, z
Return

RotateViewTool:
	Send, r
Return

SelectionTool:
	Send, v
Return

Zoom100:
	Send, ^!0
Return

ResetView:
	Send, Esc
	Send, Esc
	Send, ^0
Return

; Set menu activation key for each applicable program
^F1::
	if WinActive("ahk_class Photoshop")
		Menu, PhotoshopMenu, Show
	if WinActive("ahk_class illustrator")
		Menu, IllustratorMenu, Show
Return