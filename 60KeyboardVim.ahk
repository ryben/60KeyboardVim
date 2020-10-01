; Autohotkey Capslock Remapping Script
; Danik
; More info at http://danikgames.com/blog/?p=714
; danikgames.com
;
; Functionality:
; - Deactivates capslock for normal (accidental) use.
; - Hold Capslock and drag anywhere in a window to move it (not just the title bar).
; - Access the following functions when pressing Capslock: 
;     Cursor keys           - J, K, L, I
;     Enter                 - Space
;     Home, PgDn, PgUp, End - U, O, Y, H
;     Backspace and Del     - N, M
;
;     Insert                - B
;     Select all            - A
;     Cut, copy, paste      - S, D, F
;     Close tab, window     - W, E
;     Esc                   - R
;     Next, previous tab    - Tab, Q
;     Undo, redo            - , and .
; - Numpad at the right hand resting position when holding Ctrl+Shift+Alt (using keys m,.jkluio and spacebar)
;
; To use capslock as you normally would, you can press WinKey + Capslock


; This script is mostly assembled from modified versions of the following awesome scripts:
;
; # Home Row Computing by Gustavo Duarte: http://duartes.org/gustavo/blog/post/home-row-computing for 
; Changes:
; - Does not need register remapping of AppsKey using SharpKeys.
; - Uses normal cursor key layout
; - Added more hotkeys for insert, undo, redo etc.
;
; # Get the Linux Alt+Window Drag Functionality in Windows: http://www.howtogeek.com/howto/windows-vista/get-the-linux-altwindow-drag-functionality-in-windows/
; Changes: The only change was using Capslock instead of Alt. This
; also removes problems in certain applications.




#Persistent
SetCapsLockState, AlwaysOff



; Vim Arrow keys

Capslock & h::Send {Blind}{Left DownTemp}
Capslock & h up::Send {Blind}{Left Up}

Capslock & j::Send {Blind}{Down DownTemp}
Capslock & j up::Send {Blind}{Down Up}

Capslock & k::Send {Blind}{Up DownTemp}
Capslock & k up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}



; Vim Insert at beginning, End, Next word, Previous Word

; Capslock & 0::Send {Blind}{Home DownTemp}
; Capslock & 0 up::Send {Blind}{Home Up}

; Capslock & 4::Send {Blind}{End DownTemp}
; Capslock & 4 up::Send {Blind}{End Up}

; Capslock & w::Send ^{Right}
; Capslock & b::Send ^{Left}

; Vim End
; Capslock & g::Send ^{End}



; Home, End, PageUp, PageDown

Capslock & [::Send {Blind}{Home DownTemp}
Capslock & [ up::Send {Blind}{Home Up}

Capslock & ]::Send {Blind}{End DownTemp}
Capslock & ] up::Send {Blind}{End Up}

Capslock & `;::Send {Blind}{PgUp DownTemp}
Capslock & `; up::Send {Blind}{PgUp Up}

Capslock & '::Send {Blind}{PgDn DownTemp}
Capslock & ' up::Send {Blind}{PgDn Up}



; Insert, Delete

Capslock & .::Send {Blind}{Ins DownTemp}
Capslock & . up::Send {Blind}{Ins Up}

Capslock & /::Send {Blind}{Del DownTemp}
Capslock & / up::Send {Blind}{Del Up}



; Function Keys
CapsLock & 1:: Send {F1}
CapsLock & 2:: Send {F2}
CapsLock & 3:: Send {F3}
CapsLock & 4:: Send {F4}
CapsLock & 5:: Send {F5}
CapsLock & 6:: Send {F6}
CapsLock & 7:: Send {F7}
CapsLock & 8:: Send {F8}
CapsLock & 9:: Send {F9}
CapsLock & 0:: Send {F10}
CapsLock & -:: Send {F11}
CapsLock & +:: Send {F12}


; Mouse Movement, Click, Drag, Scroll


CapsLock & w::MouseMove, 0, % GetKeyState("Alt", "P") ? -150 : -20, 0, R
CapsLock & a::MouseMove, % GetKeyState("Alt", "P") ? -150 : -20, 0, 0, R
CapsLock & s::MouseMove, 0, % GetKeyState("Alt", "P") ? 150 : 20, 0, R
CapsLock & d::MouseMove, % GetKeyState("Alt", "P") ? 150 : 20, 0, 0, R

Capslock & n::Send, {LButton Down}
Capslock & n up::Send, {LButton Up}
Capslock & m::MouseClick, right
Capslock & b::MouseClick, middle

Capslock & u::Send, {WheelDown 1}
Capslock & i::Send, {WheelUp 1}



; Full Screen

Capslock & enter::Send, {F11}