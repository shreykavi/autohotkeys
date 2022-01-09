#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

LCtrl & Tab:: AltTab
!Tab:: Send ^{Tab}
!+Tab:: Send ^+{Tab}

^Space:: Send ^{Esc}

^Left::
    Send {Home}
Return

^Right::
    Send {End}
Return

^+Left::
    Send +{Home}
Return

^+Right::
    Send +{End}
Return


^Up::
    Send ^{Home}
Return

^Down::
    Send ^{End}
Return

^+Up::
    Send ^+{Home}
Return
Return

^+Down::
    Send ^+{End}

; CapsLock to Esc
CapsLock::
    Send, {Esc}
    return

; Cursor to last word
!Left::
    Send ^{Left}
    Return
; Cursor to next word
!Right::
    Send ^{Right}
    Return

; Delete last word
!Backspace::
    Send ^+{Left}{Backspace}
    Return

; Delete line
^Backspace::
    Send {Home}{Home}{ShiftDown}{End}{Right}{ShiftUp}{Del}
    Return
