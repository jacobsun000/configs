#Requires AutoHotkey v2.0.2
#SingleInstance Force

; Function to send cmd to Komorebic
Komorebic(cmd) {
    RunWait(format("komorebic.exe {}", cmd), , "Hide")
}

;Komorebic("monitor-work-area-offset 0 0 64 0 64")
;Komorebic("monitor-work-area-offset 1 0 32 0 32")
;RunWait("python C:\Users\25213\.yasb\yasb\src\main.py", , "Hide")

#r::Reload
#+r::{
    Komorebic("reload-configuration")
    Komorebic("retile")
}
#^q::Komorebic("stop")
#^s::Komorebic("start")
#^y::Run("python C:\Users\25213\.yasb\yasb\src\main.py", , "Hide")
#t::Run("C:\Program Files\WezTerm\wezterm-gui.exe")
#b::Run("C:\Program Files\Mozilla Firefox\firefox.exe")

#q::Komorebic("close")
#m::Komorebic("minimize")

; Focus windows
#n::Komorebic("focus left")
#e::Komorebic("focus down")
#u::Komorebic("focus up")
#i::Komorebic("focus right")

!+[::Komorebic("cycle-focus previous")
!+]::Komorebic("cycle-focus next")

; Move windows
#+n::Komorebic("move left")
#+e::Komorebic("move down")
#+u::Komorebic("move up")
#+i::Komorebic("move right")

; Stack windows
; !Left::Komorebic("stack left")
; !Down::Komorebic("stack down")
; Up::Komorebic("stack up")
; Right::Komorebic("stack right")
; ;::Komorebic("unstack")
; [::Komorebic("cycle-stack previous")
; ]::Komorebic("cycle-stack next")

; Resize
#^i::Komorebic("resize-axis horizontal increase")
#^n::Komorebic("resize-axis horizontal decrease")
#^u::Komorebic("resize-axis vertical increase")
#^e::Komorebic("resize-axis vertical decrease")

; Manipulate windows
#v::Komorebic("toggle-float")
;#f::Komorebic("toggle-monocle")

; Window manager options
; !p::Komorebic("toggle-pause")

; Layouts
;!x::Komorebic("flip-layout horizontal")
;!y::Komorebic("flip-layout vertical")

; Workspaces
!Left::Komorebic("cycle-workspace previous")
!Right::Komorebic("cycle-workspace next")
#1::Komorebic("focus-workspace 0")
#2::Komorebic("focus-workspace 1")
#3::Komorebic("focus-workspace 2")
#4::Komorebic("focus-workspace 3")
#5::Komorebic("focus-workspace 4")
#6::Komorebic("focus-workspace 5")
#7::Komorebic("focus-workspace 6")
#8::Komorebic("focus-workspace 7")
#9::Komorebic("focus-workspace 8")

; Move windows across workspaces
!+Left::Komorebic("cycle-move-to-workspace previous")
!+Right::Komorebic("cycle-move-to-workspace next")
#+1::Komorebic("move-to-workspace 0")
#+2::Komorebic("move-to-workspace 1")
#+3::Komorebic("move-to-workspace 2")
#+4::Komorebic("move-to-workspace 3")
#+5::Komorebic("move-to-workspace 4")
#+6::Komorebic("move-to-workspace 5")
#+7::Komorebic("move-to-workspace 6")
#+8::Komorebic("move-to-workspace 7")
#+9::Komorebic("move-to-workspace 8")
