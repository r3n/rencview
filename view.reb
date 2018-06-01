REBOL [
	Name:    rencview-wrapper
	Title:   "View Module Wrapper"
	File:    %view.reb
	Author:  "R3N Open source developers"
	Version: 0.0.0.1
	Type:    module
	Export:  [all sorts of stuff!]
]

; Just a starter for now

; Win
	if OS="Windows" [
		imoprt %general/model.reb
		import %windows/controller.reb
		import %windows/displayer.reb ; the word view is already taken
	]
	
; Linux
	if OS="Linux" [
		imoprt %general/model.reb
		import %linux/controller.reb
		import %linux/displayer.reb
	]
	
; MacOS
	if OS="MacOS" [
		imoprt %general/model.reb
		import %macos/controller.reb
		import %macos/displayer.reb
	]
	
; Android
	if OS="Android" [
		imoprt %general/model.reb
		import %android/controller.reb
		import %android/displayer.reb
	]
; eof or extra empty line humpf, who cares?
