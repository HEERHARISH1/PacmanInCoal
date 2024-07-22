include Irvine32.inc
include macros.inc
includelib winmm.lib
PlaySound PROTO,
        pszSound:PTR BYTE, 
        hmod:DWORD, 
        fdwSound:DWORD

.data
SND_FILENAME DWORD 00020000h
SND_LOOP equ 00000008h
SND_ASYNC equ 00000001h
menuSoundFile BYTE "C:\Users\heerh\Downloads\horror-background-atmosphere-with-creepy-clown-laughter-172681.wav", 0   ; Define the file name for the menu sound
eatingFile BYTE "C:\Users\heerh\Downloads\Luke-Bergs-Bliss_chosic.com_.wav",0

eatingFile1 BYTE "C:\Users\heerh\Downloads\sb_indreams_chosic.com_.wav",0
eatingFile2 BYTE "C:\Users\heerh\Downloads\Last-Hero_chosic.com_.wav",0


menuSoundFile2 BYTE "C:\Users\heerh\Downloads\evil-shreik-45560.wav", 0   ; Define the file name for the menu sound

menuSoundFile3 BYTE "C:\Users\heerh\Downloads\heart-beat-137135.wav", 0   ; Define the file name for the menu sound

menuSoundFile4 BYTE"C:\Users\heerh\Downloads\wrong-place-129242.wav", 0   ; Define the file name for the menu sound





    mazeLayout BYTE 28 dup (79 dup(?))
    pause_prompt db "GAME PAUSED", 0
welcomeT BYTE "                                                                                    ", 0
welcomeT1 BYTE "                                                                                   ", 0
welcomeT2 BYTE "                                                                                   ", 0
welcomeT3 BYTE "                                                                                   ", 0
welcomeT4 BYTE "                                                                                   ", 0
welcomeT5 BYTE "                                                                                   ", 0
welcomeT6 BYTE "                                                                                   ", 0
welcomeText1 BYTE "                                                         ", 0
welcomeText2 BYTE "                _____       _____ ______         ______                 ", 0
welcomeText3 BYTE "         |    | |     |     |     |    |  |\  /| |                   ", 0
welcomeText4 BYTE "         | /\ | |---  |     |     |    |  | \/ | |----                          ", 0
welcomeText5 BYTE "         |/  \| |____ |____ |____ |____|  |    | |_____                                ", 0
welcomeText6 BYTE "                                                            ", 0
welcomeText7 BYTE "                  _______                _____   ______ ______             _____           ", 0
welcomeText8 BYTE "                     |  _____            |    |  |    | |      ___ |\  /|  |   | |\  |           ", 0
welcomeText9 BYTE "                     |  |   |            |----   |----| |          | \/ |  |---| | \ |         ", 0
welcomeText0 BYTE "                     |  |___|            |       |    | |_____     |    |  |   | |  \|       ", 0
welcomeText10 BYTE "                                                                                                            ", 0
welcomeText11 BYTE "                                                                                                       ", 0
welcomeText12 BYTE "                                                                          (HALLOWEEN VERSION)            ", 0
welcomeText13 BYTE "                                                                                         (H)                          ", 0
welcomeText14 BYTE "                                                                                                   ", 0

namePrompt BYTE "Enter your name: ", 0
userNameBuffer BYTE 32 DUP (?)   ; Buffer to hold user's name




C1 BYTE "                                                                           ", 0
C2 BYTE "                                                                        ", 0
C3 BYTE "                                                                           ", 0
C4 BYTE "                                                                           ", 0
C5 BYTE "   -----------------------------------------------------------------------------             ", 0
C6 BYTE "                   |                                                               ", 0
C7 BYTE "              _____|_____                                                            ", 0
C8 BYTE "             /           \                                 ", 0
C9 BYTE "            /             \                           ", 0
Ca BYTE "           /   /       \   \                                 ", 0
Cb BYTE "          |        ^        |                                                       ", 0
Cc BYTE "           \      ----     /                                                          ", 0
Cd BYTE "            \             /                                                      ", 0
Ce BYTE "             \___________/                                                               ", 0
Cf BYTE "                                                                           ", 0
Cg BYTE "                                                               ", 0
Cy BYTE "                                                                       ", 0
Ci BYTE "                                                                                       ", 0
Cj BYTE "                                FOR MOVING LEFT PRESS -------> A                         ", 0
Ck BYTE "                                FOR MOVING RIGHT PRESS ------> D                                        ", 0
Cz BYTE "                                FOR MOVING DOWN PRESS -------> S                            ", 0
Cm BYTE "                                FOR MOVING UP PRESS ---------> W                      ", 0
Cn BYTE "                                       _________                                                 ", 0
Co BYTE "                                       |       |   ", 0
Cp BYTE "                                       |   W   |                          ", 0
Cq BYTE "                                       |_______|                     ", 0
Cr BYTE "                                                                             ", 0
Cw BYTE "                             _________  ________  _________                                                                          ", 0
Ct BYTE "                             |       |  |      |  |       |                           ", 0
Cu BYTE "                             |   A   |  |   S  |  |   D   |                            ", 0
Cv BYTE "  ___________________________|_______|__|______|__|_______|__________________________", 0










mazree BYTE "           ",0

maz1 BYTE "---------------------------------------------------------------------------------"
     BYTE "| . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . |"
     BYTE "| .  +++  . . . . . . . . . ++++++++ . . * . . +++ . . . . . . . . +++ . . . . .|"   
     BYTE "| .  +++  . . . . . . . . . ++++++++ . . . . . +++ . . . . . . . . +++ . . . . .|"   
     BYTE "| .  +++  . . . . . . . . . +++ . . . . . . . .+++++++++++++++ . . +++ . . . . .|"   
     BYTE "| . <+++  . . . . . . . . . +++ . . . . . . . .+++++++++++++++ . . +++ . . . . .|"   
     BYTE "| .  +++  . . . . . . . . . +++ . . . . . . . . . . . . . . . .  . +++ . . . . .|"   
     BYTE "| .  +++  . . . . . . . . . . . . . . . . . . . . . . . . . ++++++++++ . . . . .|"   
     BYTE "| .  ++++++++++++++++++ . . ++++++++++ . . . . . . . . . .  ++++++++++ . . . . .|"   
     BYTE "| .  ++++++++++++++++++ . . ++++++++++ . . ++++++++  . . . . . . . . . . . . . .|"   
     BYTE "| . . . . . . . . . +++ . . +++  . . . . . . . . . . . . +++++++++++++++ . . . .|"   
     BYTE "| . . . . . . . . . +++ . . +++  . * . . . . . . . . .   +++++++++++++++ . . . .|"   
     BYTE "| . . . . . . . . . +++ . . +++  . . . . . . . . . . . . . . . . . . +++ . . . .|"   
     BYTE "| . +++++++++++++ . . . . . . . . . . . . . . . . . . . . . . . .  . +++ . . . .|"   
     BYTE "| . . . . . . . . . . . . . . . . . . . .  +++++++++++++++++++++++ . +++ . . . .|"   
     BYTE "| . . . . . . . . . . . . . . . . . . . .  +++++++++++++++++++++++ . +++ . . . .|"   
     BYTE "| . +++ .  +++++++++++++++++++ . . . .  +++ . . . . . . . . . . . .  +++ . . . .|"   
     BYTE "| . +++ . . . . . . . . .  +++ . . . .  +++ . . . . . . . . . . . . . .  . . . .|"   
     BYTE "| . +++ . . . . . . . . .  +++ . . . .  +++ . . ++++++++++++++++++++++++ . . . .|"   
     BYTE "| . +++ . . . . . . . . .  +++ . . . .  +++ . . ++++++++++++++++++++++++ . . . .|"   
     BYTE "| . +++ . . . * . . . . .  ++++++++++++++++ . * . . . . . . . . . . . .  . . . .|"   
     BYTE "| . +++ . . . . . . . . .  ++++++++++++++++ . . . . . . ++++++++++++++++ . . . .|"   
     BYTE "| . +++ . . . . . . . . . . . . . . . . .  . . . . . . . . . .  . . .  . . . . .|"   
     BYTE "| . . . .  ++++++++. . . . . . . . . +++++++++++++ . . . . . . . . . . . . . . .|"   
     BYTE "| . . . .  +++++++++++++++++++ . . . +++++++++++++++++++++++++++++ . . . . . . .|"   
     BYTE "| . . * . . . . . ++++++++++++ . . . . . . . . .  ++++++++++++++++ . . . . . . .|"   
     BYTE "| . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . |"
     BYTE "---------------------------------------------------------------------------------",0

mazre BYTE "    ",0

maze1 BYTE "---------------------------------------------------------------------------------"
     BYTE "| . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . |"
     BYTE "| .  +++++++++++. . . . . . ++++++++ . . . . . +++ . . . . . . . . +++ . . . . .|"   
     BYTE "| .  +++++++++++. . . . . . ++++++++ . . . . . +++ . . . . . . . . +++ . . . . .|"   
     BYTE "| .  +++  . . . . . . . . . +++ . * . . . . . .+++++++++++++++ . . +++ . . . . .|"   
     BYTE "| .  +++  . . . . . .*. . . ++++++++  . . . . .+++++++++++++++ . . +++ . . . . .|"   
     BYTE "| .  +++  . . . . . . . . . ++++++++  . . . . . . . . . . . . . .  +++ . . . . .|"   
     BYTE "| .  +++  . . . . . . . . . . . . . . . . . . . . . . . . . ++++++++++ . . . . .|"   
     BYTE "| .  ++++++++++++++++++ . . ++++++++++ . . . . . . . . . .  ++++++++++ . . . . .|"   
     BYTE "| .  ++++++++++++++++++ . . ++++++++++ . . ++++++++  . . . . . . . . . . . . . .|"   
     BYTE "| . . . . . . . . . +++ . . +++  . . . . . . . . . . . . +++++++++++++++ . . . .|"   
     BYTE "| . . . . . . . . . +++ . . +++  . . . . . . . . . . .   +++++++++++++++ . . . .|"   
     BYTE "| . . . . . . . . . +++ . . +++  .++++ . . . . . . . . . . . . . . . +++ . . . .|"   
     BYTE "| . +++++++++++++ . . . . . . . . ++++. . . . . . . . . . . . . .  . +++ . . . .|"   
     BYTE "| . . . . . . . . . . . . . . . . . . . .  +++++++++++++++++++++++ . +++ . . . .|"   
     BYTE "| . . . . .+++++++++++++++++++. . . . . .  +++++++++++++++++++++++ * +++ . . . .|"   
     BYTE "| . +++ .  +++++++++++++++++++ . . . .      . . . . . . . . . . . .  +++ . . . .|"   
     BYTE "| . +++ . . . . . . . . .  +++ . . . .  +++ . . . . . . . . . . . . . .  . . . .|"   
     BYTE "| . +++ . . . . . . . . .  +++ . . . .  +++ . . ++++++++++++++++++++++++ . . . .|"   
     BYTE "| . +++ . . . . . . . . .  +++ . . . .  +++ . . ++++++++++++++++++++++++ . . . .|"   
     BYTE "| . +++ . . . . . . . . .  ++++++++++++++++ . . . . . . . . . . . . . .  . . . .|"   
     BYTE "| . +++ . . . . . . . . .  ++++++++++++++++ . . . . . . ++++++++++++++++ . . . .|"   
     BYTE "| . +++ . . . . . . . . . . . . . . . . .  . . . . . . . . . .  . . .  . . . . .|"   
     BYTE "| . . . .  ++++++++. . . . . . . . . +++++++++++++ . . . . . . . . . . . . . . .|"   
     BYTE "| . . . .  +++++++++++++++++++ . . . +++++++++++++++++++++++++++++ . . . . . . .|"   
     BYTE "| . . . . . . . . ++++++++++++ . . . . . . . . .  ++++++++++++++++ . . . . . . .|"   
     BYTE "| . . . . . . . . . . . . . . . . . . . . . . . . . . . * . . . . . . . . . . . |"
     BYTE "---------------------------------------------------------------------------------",0

mz BYTE "                   ",0

mz1 BYTE "---------------------------------------------------------------------------------"
     BYTE "| . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . |"
     BYTE "| .  +++  . . . . . +++ . . +++++++++++++. . . +++ . . . . . . . . +++ . . . . .|"   
     BYTE "| .  +++  . . . . . +++ . . +++++++++++++ . .  +++ . . . . . . . . +++ . . . . .|"   
     BYTE "| .  +++  . . . . . +++ . . +++ . . . . . . . .+++++++++++++++ . . +++ . . +++ .|"   
     BYTE "| .  +++  . . . . . +++ . . +++ . . . . . . . .+++++++++++++++ . . +++ . . +++ .|"   
     BYTE "| .  +++  . . . . . +++ . . +++ . . . . . . . . . . . . . . . . .  +++ . . +++ .|"   
     BYTE "| .  +++  . . . . . +++ . . ++++++++++. . . . . . . . . . . ++++++++++ . . +++ .|"   
     BYTE "| .  ++++++++++++++++++ . . ++++++++++ . . . . . . . . . .  ++++++++++ . . . . .|"   
     BYTE "| .  ++++++++++++++++++ . . +++ . . . .  . . ++++++++  . . . . . . . . . . . . .|"   
     BYTE "| . .+++. . . . . . +++ . . +++ . . . . . . .++++++++ .  +++++++++++++++ .  . . |"   
     BYTE "| . .+++. . . . . . +++ . . +++ . . . . . . . . . . . .  +++++++++++++++ .  . . |"   
     BYTE "| . .+++. . . . . . +++ . . +++++++++++++. . . . . . . . . . . . . . +++ . . . .|"   
     BYTE "| .  +++ . . . . . .+++. . .++++++++++++++++. . . . . . . . . . .  . +++ . . . .|"   
     BYTE "| . . . . . . . . . . . . . ++. . . $ . . ++++++++++++++++++++++++ . +++ . . . .|"   
     BYTE "| . . . . .++++++++++++++++++++++++ . ++++++++++++++++++++++++++++ . +++ . . . .|"   
     BYTE "| . +++ .  +++++++++++++++++++ . . . .      . . . . . . . . . . . .  +++ . . . .|"   
     BYTE "| . +++ . . . . . . . . .  +++ . . . .  +++ . . . . . . . . . . . . . .  . . . .|"   
     BYTE "| . +++ . . ++++++. . . .  +++ . . . .  +++ . . ++++++++++++++++++++++++ . . . .|"   
     BYTE "| . +++ . . ++++++. . . .  +++ . . . .  +++ . . ++++++++++++++++++++++++ . . . .|"   
     BYTE "| . +++ . . ++++++. . . .  ++++++++++++++++ . . . . . . . . . . . . . .  . . . .|"   
     BYTE "| . +++ . . . . . . . . .  ++++++++++++++++ . . . . . . ++++++++++++++++ . . . .|"   
     BYTE "| . +++ . . . . . . . . . . . . . . . . .  . . . . . . . . . .  . . .  . .+++. .|"   
     BYTE "| . . . .  ++++++++. . . . . . . . . +++++++++++++ . . . . . . . . . . . .+++. .|"   
     BYTE "| . . . .  +++++++++++++++++++ . . . +++++++++++++++++++++++++++++ . ++++++++. .|"   
     BYTE "| . . . . . . . . ++++++++++++ . . . . . . . . .  ++++++++++++++++ . ++++++++. .|"   
     BYTE "| . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . |"
     BYTE "---------------------------------------------------------------------------------",0



rightCheck BYTE 1
leftCheck BYTE 1
upCheck BYTE 1
downCheck BYTE 1


character BYTE "+",0
star BYTE ".",0
star1 BYTE "*",0
star2 BYTE "$",0
temp byte ?
strx BYTE "Level :",0 ;column 
stry BYTE "YPOS :",0 ;row 


strright BYTE "RIGHT : ",0
strleft BYTE "LEFT : ",0
strup BYTE  "UP : ",0
strdown BYTE  "DOWN : ",0
strrightcc BYTE  "rightCheck : ",0


counterright DD 410
counterleft DD 408
counterup DD 328
counterdown DD 490

khanaRightside BYTE 1
khanaLeftside BYTE 1
khanaUpside BYTE 1
khanaDownside BYTE 1

khanaRight DD 410
khanaLeft DD 408
khanaUper DD 328
khanaNecha DD 490


khanaRightextraside BYTE 1
khanaLeftextraside BYTE 1
khanaUpextraside BYTE 1
khanaDownextraside BYTE 1

khanaRightextra DD 410
khanaLeftextra DD 408
khanaUperextra DD 328
khanaNechaextra DD 490


strScore BYTE "Your score is: ",0
score DD 0


xPos BYTE 4           ;min  3     2 pa wall hai   max is 81  82 pa wall   + 1         columns        
yPos BYTE 6           ;min 2      1 pa wall max 27 wall on 28     +1                   rows


totalCol BYTE 83 ; cols xpos 
totalRows BYTE 29; rows ypos
xCoinPos BYTE 0
yCoinPos BYTE 0



; FIRST ENEMY 

xEnemyPos BYTE 38
yEnemyPos BYTE  13


inputChar BYTE ?


pointer byte ?


livecounter BYTE "hearts",0


lives BYTE 3
rasta byte 1




looseText1   BYTE "                   ",0
looseText2   BYTE "                   ", 0
looseText3   BYTE "                             ", 0
looseText4   BYTE "  \  /             |            ", 0
looseText5   BYTE "   \/  ____        |       ____ ___ ____     ", 0
looseText6   BYTE "   /   |  |  |  |  |       |  | |__   |  ", 0
looseText7   BYTE "  /    |__|  |__|  |______ |__| __|   |          ", 0
looseText8   BYTE "                             ", 0
looseText9   BYTE "                             ", 0


looseText11   BYTE "                   ",0
looseText12   BYTE "                   ", 0
looseText13   BYTE "                             ", 0
looseText14   BYTE "  \  /             |    |        ", 0
looseText15   BYTE "   \/  ____        |    | ____       ", 0
looseText16   BYTE "   /   |  |  |  |  | /\ | |  | |\ |     ", 0
looseText17   BYTE "  /    |__|  |__|  |/  \| |__| | \|             ", 0
looseText18   BYTE "                             ", 0
looseText19   BYTE "                             ", 0





.code



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  MAIN      MAIN              MAIN ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

main PROC


   call WelcomeMessage
    call EatingDinner

    call LevelOne
    call StopSound

    mov eax, score      ; Load score into eax
    cmp eax, 10      ; Compare score to 723
    je levelOneDone     ; If score equals 723, jump to levelOneDone


levelOneDone:
    inc score   ; Increase the score by 1
    call EatingDinner1

    call LevelTwo      ; Move to LevelTwo after increasing the score
        call StopSound
     cmp eax, 20        ; Compare score to 723
    je levelTwoDone     ; If score equals 723, jump to levelOneDone




    levelTwoDone:
    inc score
    call EatingDinner2
    call LevelThree
      call StopSound
    cmp eax,140
    je youwon
    youwon:
    call clrscr
    call won
    exit

main ENDP











;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                LEVEL ONE          ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



LevelOne PROC 
     call Clrscr 
    call MazeHe
 

   call DrawPlayer
  
    ;call CreateRandomCoin
    ;call DrawCoin

    call Randomize
    call DrawEnemy




  mov esi ,OFFSET maz1











    gameLoop:


    ;return 
    
    cmp score,10
    je hi
    jmp  hello
    hi:
    ret
    hello:



    ;enemy collision
        mov al,xPos
        mov bl,yPos
        cmp al,xEnemyPos
        je m2

        jmp lastpoint
        m2:

        cmp bl,yEnemyPos
        je m1
        jmp lastpoint
        m1:

        dec lives



        lastpoint:

        cmp lives,0
        je exitGame









    call UpdateEnemy
 ;4 if cases
        cmp rasta,1
        jne jump2
        
        inc yEnemyPos
        inc rasta 
     

         ;statements for 1
        jmp endingpoint
        jump2:
        cmp rasta,2
        jne jump3
        
        inc xEnemyPos
        inc rasta
  

         ;statements for 2

        jmp endingpoint
        jump3:
        cmp rasta,3
        jne jump4
        inc rasta
        dec yEnemyPos

        ;statements for 3
        
        jmp endingpoint
        jump4:
        cmp rasta,4
        jne jump5
        inc rasta
        dec xEnemyPos
        mov rasta,1




        cmp rasta,5
        jne jump6
        
        inc yEnemyPos
        inc rasta 
     

         ;statements for 4
        jmp endingpoint
        jump5:
        cmp rasta,5
        jne jump6
        
        inc xEnemyPos
        inc rasta
  

         ;statements for 2

        jmp endingpoint
        jump6:
        cmp rasta,6
        jne jump7
        inc rasta
        dec yEnemyPos

        ;statements for 3
        
        jmp endingpoint
        jump7:
        cmp rasta,7
        jne jump8
        inc rasta
        dec xEnemyPos
        mov rasta,1

         ;statements for 4
         jmp endingpoint
        jump8:

        endingpoint:
    call DrawEnemy 
          ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;WALLS COLLISION DETECTION ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

call rightproc
call downproc
call upproc
call leftproc



     
call rightFproc
call downFproc
call upFproc
call leftFproc


     
call rightFEproc
call downFEproc
call upFEproc
call leftFEproc


        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;DRAWING ELEMENTS FOR HELP;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


        mov bl,xPos
        cmp bl,xCoinPos
        jne notCollecting
        mov bl,yPos
        cmp bl,yCoinPos
        jne notCollecting
        ; player is intersecting coin:
        inc score
        call CreateRandomCoin
        call DrawCoin
        notCollecting:

        mov eax,white (black * 16)
        call SetTextColor

        ; draw score:
        mov dl,0
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov eax,score
        call WriteInt

        ; draw lives :
          mov dl,30
        mov dh,0
        call Gotoxy
        mov edx,OFFSET livecounter
        call WriteString
        mov al,lives
        call WriteInt



    
        ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;KEYS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

        onGround:
        mov eax,100
        call Delay
        ; get user key input:
        call ReadKey
        
       
        mov inputChar,al

        ; exit game if user types 'x':
        cmp inputChar,"x"
        je exitGame


        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

          cmp inputChar,"p"
        je movepause
jmp gameloop 
moveUp:

    cmp upCheck,0
    je gameLoop

    

    ; Check if the player is not at the top boundary (yPos > 2)
    cmp yPos, 2
    jle boundaryReachedUp
     ;;;; heer down


    cmp khanaUpside,1
        je khananishtaU
       
        inc score
       
        

mov esi, OFFSET maz1
mov ecx, khanauper


    mov eax, esi
    add eax, ecx      
    
    mov byte ptr [eax], ' '


        khananishtaU:
        cmp khanaUpextraside,1
        je khananishtaEU
        add score,5

         khananishtaEU:

        ;;;;; heer up

    sub counterright,81
    sub counterleft,81
    sub counterup,81
    sub counterdown,81

    sub khanaRight,81
    sub khanaLeft,81
    sub khanaUper,81
    sub khanaNecha,81


    sub khanaRightextra,81
    sub khanaLeftextra,81
    sub khanaUperextra,81
    sub khanaNechaextra,81


    ; Your existing code for moving up
   
    call UpdatePlayer
    dec yPos
    call DrawPlayer
    jmp gameLoop

boundaryReachedUp:
    jmp gameLoop



moveDown:
    
    cmp downCheck,0
    je gameLoop

    

    ; Check if the player is not at the bottom boundary (yPos < 28)
    cmp yPos, 27
    jge boundaryReachedDown



    ;;;; heer down


    cmp khanaDownside,1
        je khananishta
        inc score

mov esi, OFFSET maz1
mov ecx, khanaNecha


    mov eax, esi
    add eax, ecx      
    
    mov byte ptr [eax], ' '


        khananishta:
         cmp khanaDownextraside,1
        je khananishtaED
        add score,5
        khananishtaED:

        ;;;;; heer up


    add counterright,81
    add counterleft,81
    add counterup,81
    add counterdown,81

    add khanaRight,81
    add khanaLeft,81
    add khanaUper,81
    add khanaNecha,81

    add khanaRightextra,81
    add khanaLeftextra,81
    add khanaUperextra,81
    add khanaNechaextra,81
    ; Your existing code for moving down
    call UpdatePlayer
    inc yPos
    call DrawPlayer
    jmp gameLoop

boundaryReachedDown:
    jmp gameLoop

moveLeft:
    


    cmp leftCheck,0
    je gameLoop

    

    
    ; Check if the player is not at the left boundary (xPos > 3)
    cmp xPos, 1
    jle boundaryReachedLeft
    

    ;;;; heer down


    cmp khanaLeftside,1
        je khananishtaL
        
        inc score

mov esi, OFFSET maz1
mov ecx, khanaLeft


    mov eax, esi
    add eax, ecx      
    
    mov byte ptr [eax], ' '


        khananishtaL:
         cmp khanaLeftextraside,1
        je khananishtaEL
        add score,5
        khananishtaEL:
        ;;;;; heer up


    sub counterright,1
    sub counterleft,1
    sub counterup,1
    sub counterdown,1

    sub khanaRight,1
    sub khanaLeft,1
    sub khanaUper,1
    sub khanaNecha,1

     sub khanaRightextra,1
    sub khanaLeftextra,1
    sub khanaUperextra,1
    sub khanaNechaextra,1

    ; Your existing code for moving left
    call UpdatePlayer
    dec xPos
    call DrawPlayer
    jmp gameLoop

boundaryReachedLeft:
    jmp gameLoop

moveRight:



    cmp rightCheck,0
    je gameLoop


    


    ; Check if the player is not at the right boundary (xPos < 82)
    cmp xPos, 79
    jge boundaryReachedRight


     ;;;; heer down


    cmp khanaRightside,1
        je khananishtaR
        
        inc score

mov esi, OFFSET maz1
mov ecx, khanaRight


    mov eax, esi
    add eax, ecx      
    
    mov byte ptr [eax], ' '


        khananishtaR:
         cmp khanaRightextraside,1
        je khananishtaER
        add score,5
        khananishtaER:

        ;;;;; heer up


    add counterright,1
    add counterleft,1
    add counterup,1
    add counterdown,1

    add khanaRight,1
    add khanaLeft,1
    add khanaUper,1
    add khanaNecha,1

    add khanaRightextra,1
    add khanaLeftextra,1
    add khanaUperextra,1
    add khanaNechaextra,1

    ; Your existing code for moving right
    call UpdatePlayer
    inc xPos
    call DrawPlayer
    jmp gameLoop

    movepause :

    call pauseMenu

      call DrawPlayer
    jmp gameLoop


boundaryReachedRight:
    jmp gameLoop

    jmp gameLoop

    exitGame:
    call clrscr
    call loose

    exit

   



LevelOne ENDP 







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL ONE MOVESSSS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


rightproc PROC
    ;counterright

    mov esi,OFFSET maz1
    mov edx,counterright

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,character
    cmp ah,al
    jne notf
    mov rightCheck,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov rightCheck,1
    plane:

    ret
rightproc ENDP

leftproc PROC
    ;counterright

    mov esi,OFFSET maz1
    mov edx,counterleft

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,character
    cmp ah,al
    jne notf
    mov leftCheck,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov leftCheck,1
    plane:

    ret
leftproc ENDP

upproc PROC
    ;counterright

    mov esi,OFFSET maz1
    mov edx,counterup

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,character
    cmp ah,al
    jne notf
    mov upCheck,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov upCheck,1
    plane:

    ret
upproc ENDP

downproc PROC
    ;counterright

    mov esi,OFFSET maz1
    mov edx,counterdown

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,character
    cmp ah,al
    jne notf
    mov downCheck,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov downCheck,1
    plane:

    ret
downproc ENDP



rightFproc PROC
  ;counterright

    mov esi,OFFSET maz1
    mov edx,khanaRight

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star
    cmp ah,al
    jne notf
    mov khanaRightside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaRightside,1
    plane:

    ret
rightFproc ENDP

leftFproc PROC
  ;counterright

    mov esi,OFFSET maz1
    mov edx,khanaLeft

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star
    cmp ah,al
    jne notf
    mov khanaLeftside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaLeftside,1
    plane:

    ret
leftFproc ENDP

upFproc PROC
    ;counterright

    mov esi,OFFSET maz1
    mov edx,khanaUper

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star
    cmp ah,al
    jne notf
    mov khanaUpside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaUpside,1
    plane:
    
    ret
upFproc ENDP


downFproc PROC
    ;counterright

    mov esi,OFFSET maz1
    mov edx,khanaNecha

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star
    cmp ah,al
    jne notf
    mov khanaDownside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaDownside,1
    plane:

    ret
downFproc ENDP



rightFEproc PROC
  ;counterright

    mov esi,OFFSET maz1
    mov edx,khanaRightextra

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star1
    cmp ah,al
    jne notf
    mov khanaRightextraside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaRightextraside,1
    plane:

    ret
rightFEproc ENDP

leftFEproc PROC
  ;counterright

    mov esi,OFFSET maz1
    mov edx,khanaLeftextra

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star1
    cmp ah,al
    jne notf
    mov khanaLeftextraside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaLeftextraside,1
    plane:

    ret
leftFEproc ENDP

upFEproc PROC
    ;counterright

    mov esi,OFFSET maz1
    mov edx,khanaUperextra

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star1
    cmp ah,al
    jne notf
    mov khanaUpextraside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaUpextraside,1
    plane:
    
    ret
upFEproc ENDP


downFEproc PROC
    ;counterright

    mov esi,OFFSET maz1
    mov edx,khanaNechaextra

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star1
    cmp ah,al
    jne notf
    mov khanaDownextraside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaDownextraside,1
    plane:

    ret
downFEproc ENDP



pauseMenu PROC
	mov eax, white + (black * 16)
	call SetTextColor

	mov dl, 90
	mov dh, 14
	call gotoxy
	mov edx, OFFSET pause_prompt
	call writestring


	pauseMenu_loop:
		mov eax, 0
		call readChar
		cmp al, 'p'
		je start__game

		jmp pauseMenu_loop

	start__game:
    	mov dl, 90
	mov dh, 14
	call gotoxy
	mov edx, OFFSET mazree
	call writestring
		jmp to__end


	to__end:
		ret
pauseMenu ENDP




;====================================================================================================
;====================================================================================================
;======================LEVEL ONE MAZE================================================================
;====================================================================================================
;====================================================================================================
MazeHe PROC

    mov esi, OFFSET mazeLayout
    mov edi, OFFSET maz1

    mov ecx, 2268 ; 28*79
    L1: 
        mov bl, [edi]
        mov [esi], bl
        inc esi
        inc edi
        loop L1

	
	mov eax, white + (black * 16)
	call setTextColor
	mov esi, OFFSET mazeLayout
	mov bl, 28
	mov ecx, 0
	mov cl, 28
	mov dl, 0
	mov dh, 1
	call gotoxy

    
	draw_maze:
		mov bl, cl
		mov cl, 81
		draw_row:
			mov eax, 0
			mov al, [esi]

			cmp al, '.'
			je draw_coin
            cmp al, '*'
			je draw_star
			cmp al, '@'
			je draw_ghost

			mov eax, white + (black * 16)
			call setTextColor
			jmp end_drawRow

			draw_coin:
				mov eax, red + (black * 16)
				call setTextColor
				jmp end_drawRow

                draw_star:
                mov eax, yellow + (black * 16)
				call setTextColor
				jmp end_drawRow

			draw_ghost:
				mov eax, blue + (black * 16)
				call setTextColor
				jmp end_drawRow

			end_drawRow:
				mov eax, 0
				mov al, [esi]
				call writeChar
				inc esi

			loop draw_row

		mov dl ,0
		inc dh
		call gotoxy
		mov cl, bl
		loop draw_maze

    ret
MazeHe ENDP






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL 2 PROC;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

LevelTwo PROC 

     call Clrscr 
    call MazeHee
 

   call DrawPlayer
  
    ;call CreateRandomCoin
    ;call DrawCoin

    call Randomize
    call DrawEnemy

  mov esi ,OFFSET maze1


    gameLoop:

    
    
    ;return 
    
    cmp score,20
    je hi
    jmp  hello
    hi:
    ret
    hello:



    ;enemy collision
        mov al,xPos
        mov bl,yPos
        cmp al,xEnemyPos
        je m2

        jmp lastpoint
        m2:

        cmp bl,yEnemyPos
        je m1
        jmp lastpoint
        m1:

        dec lives



        lastpoint:

        cmp lives,0
        je exitGame









    call UpdateEnemy
 ;4 if cases
        cmp rasta,1
        jne jump2
        
        inc yEnemyPos
        inc rasta 
     

         ;statements for 1
        jmp endingpoint
        jump2:
        cmp rasta,2
        jne jump3
        
        inc xEnemyPos
        inc rasta
  

         ;statements for 2

        jmp endingpoint
        jump3:
        cmp rasta,3
        jne jump4
        inc rasta
        dec yEnemyPos

        ;statements for 3
        
        jmp endingpoint
        jump4:
        cmp rasta,4
        jne jump5
        inc rasta
        dec xEnemyPos
        mov rasta,1




        cmp rasta,5
        jne jump6
        
        inc yEnemyPos
        inc rasta 
     

         ;statements for 4
        jmp endingpoint
        jump5:
        cmp rasta,5
        jne jump6
        
        inc xEnemyPos
        inc rasta
  

         ;statements for 2

        jmp endingpoint
        jump6:
        cmp rasta,6
        jne jump7
        inc rasta
        dec yEnemyPos

        ;statements for 3
        
        jmp endingpoint
        jump7:
        cmp rasta,7
        jne jump8
        inc rasta
        dec xEnemyPos
        mov rasta,1

         ;statements for 4
         jmp endingpoint
        jump8:

        endingpoint:
    call DrawEnemy 

call right1proc
call down1proc
call up1proc
call left1proc



     
     
     
call rightF1proc
call downF1proc
call upF1proc
call leftF1proc


     
call rightFE1proc
call downFE1proc
call upFE1proc
call leftFE1proc


        mov bl,xPos
        cmp bl,xCoinPos
        jne notCollecting
        mov bl,yPos
        cmp bl,yCoinPos
        jne notCollecting
        ; player is intersecting coin:
        inc score
        call CreateRandomCoin
        call DrawCoin
        notCollecting:

        mov eax,white (black * 16)
        call SetTextColor

        ; draw score:
        mov dl,0
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov eax,score
        call WriteInt

        ; draw lives :
          mov dl,30
        mov dh,0
        call Gotoxy
        mov edx,OFFSET livecounter
        call WriteString
        mov al,LIVES
        call WriteInt


        ;xpos :
        mov dl,60
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strx
        call WriteString
        mov al,xPos
        call WriteInt

          ;ypos :
        mov dl,90
        mov dh,0
        call Gotoxy
        mov edx,OFFSET stry
        call WriteString
        mov al,yPos
        call WriteInt




       ;right box :
        mov dl,100
        mov dh,6
        call Gotoxy
        mov edx,OFFSET strright
        call WriteString
        mov eax,counterright
        call WriteInt


       ;left box :
        mov dl,100
        mov dh,10
        call Gotoxy
        mov edx,OFFSET strleft
        call WriteString
        mov eax,counterleft
        call WriteInt


           ;up box :
        mov dl,100
        mov dh,14
        call Gotoxy
        mov edx,OFFSET strup
        call WriteString
        mov eax,counterup
        call WriteInt

           ;down box :
        mov dl,100
        mov dh,18
        call Gotoxy
        mov edx,OFFSET strdown
        call WriteString
        mov eax,counterdown
        call WriteInt





        ;mov eax,0
        
        mov al,0

        ;down box :
        mov dl,100
        mov dh,25
        call Gotoxy
        mov edx,OFFSET strrightcc
        call WriteString
        mov al,rightCheck
        call WriteInt





 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;KEYS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

        onGround:

       mov eax,100
        call Delay
        ; get user key input:
        call ReadKey
        
       
        mov inputChar,al

        ; exit game if user types 'x':
        cmp inputChar,"x"
        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

          cmp inputChar,"p"
        je movepause

jmp gameloop 
moveUp:

    cmp upCheck,0
    je gameLoop

    

    ; Check if the player is not at the top boundary (yPos > 2)
    cmp yPos, 2
    jle boundaryReachedUp
     ;;;; heer down


    cmp khanaUpside,1
        je khananishtaU
        inc score



mov esi, OFFSET maze1
mov ecx, khanauper


    mov eax, esi
    add eax, ecx      
    
    mov byte ptr [eax], ' '


        khananishtaU:
        cmp khanaUpextraside,1
        je khananishtaEU
        add score,5

         khananishtaEU:

        ;;;;; heer up

    sub counterright,81
    sub counterleft,81
    sub counterup,81
    sub counterdown,81

    sub khanaRight,81
    sub khanaLeft,81
    sub khanaUper,81
    sub khanaNecha,81


    sub khanaRightextra,81
    sub khanaLeftextra,81
    sub khanaUperextra,81
    sub khanaNechaextra,81


    ; Your existing code for moving up
   
    call UpdatePlayer
    dec yPos
    call DrawPlayer
    jmp gameLoop

boundaryReachedUp:
    jmp gameLoop



moveDown:
    
    cmp downCheck,0
    je gameLoop

    

    ; Check if the player is not at the bottom boundary (yPos < 28)
    cmp yPos, 27
    jge boundaryReachedDown



    ;;;; heer down


    cmp khanaDownside,1
        je khananishta
        inc score

mov esi, OFFSET maze1
mov ecx, khanaNecha


    mov eax, esi
    add eax, ecx      
    
    mov byte ptr [eax], ' '


        khananishta:
         cmp khanaDownextraside,1
        je khananishtaED
        add score,5
        khananishtaED:

        ;;;;; heer up


    add counterright,81
    add counterleft,81
    add counterup,81
    add counterdown,81

    add khanaRight,81
    add khanaLeft,81
    add khanaUper,81
    add khanaNecha,81

    add khanaRightextra,81
    add khanaLeftextra,81
    add khanaUperextra,81
    add khanaNechaextra,81
    ; Your existing code for moving down
    call UpdatePlayer
    inc yPos
    call DrawPlayer
    jmp gameLoop

boundaryReachedDown:
    jmp gameLoop

moveLeft:
    


    cmp leftCheck,0
    je gameLoop

    

    
    ; Check if the player is not at the left boundary (xPos > 3)
    cmp xPos, 1
    jle boundaryReachedLeft
    

    ;;;; heer down


    cmp khanaLeftside,1
        je khananishtaL
        
        inc score

mov esi, OFFSET maze1
mov ecx, khanaLeft


    mov eax, esi
    add eax, ecx      
    
    mov byte ptr [eax], ' '


        khananishtaL:
         cmp khanaLeftextraside,1
        je khananishtaEL
        add score,5
        khananishtaEL:
        ;;;;; heer up


    sub counterright,1
    sub counterleft,1
    sub counterup,1
    sub counterdown,1

    sub khanaRight,1
    sub khanaLeft,1
    sub khanaUper,1
    sub khanaNecha,1

     sub khanaRightextra,1
    sub khanaLeftextra,1
    sub khanaUperextra,1
    sub khanaNechaextra,1

    ; Your existing code for moving left
    call UpdatePlayer
    dec xPos
    call DrawPlayer
    jmp gameLoop

boundaryReachedLeft:
    jmp gameLoop

moveRight:



    cmp rightCheck,0
    je gameLoop


    


    ; Check if the player is not at the right boundary (xPos < 82)
    cmp xPos, 79
    jge boundaryReachedRight


     ;;;; heer down


    cmp khanaRightside,1
        je khananishtaR
        
        inc score

mov esi, OFFSET maze1
mov ecx, khanaRight


    mov eax, esi
    add eax, ecx      
    
    mov byte ptr [eax], ' '


        khananishtaR:
         cmp khanaRightextraside,1
        je khananishtaER
        add score,5
        khananishtaER:

        ;;;;; heer up


    add counterright,1
    add counterleft,1
    add counterup,1
    add counterdown,1

    add khanaRight,1
    add khanaLeft,1
    add khanaUper,1
    add khanaNecha,1

    add khanaRightextra,1
    add khanaLeftextra,1
    add khanaUperextra,1
    add khanaNechaextra,1

    ; Your existing code for moving right
    call UpdatePlayer
    inc xPos
    call DrawPlayer
    jmp gameLoop

    movepause :

    call pauseMenu

      call DrawPlayer
    jmp gameLoop


boundaryReachedRight:
    jmp gameLoop

    jmp gameLoop

    exitGame:
    exit




LevelTwo ENDP 







;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL TWO MOVESSSS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


right1proc PROC
    ;counterright

    mov esi,OFFSET maze1
    mov edx,counterright

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,character
    cmp ah,al
    jne notf
    mov rightCheck,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov rightCheck,1
    plane:

    ret
right1proc ENDP

left1proc PROC
    ;counterright

    mov esi,OFFSET maze1
    mov edx,counterleft

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,character
    cmp ah,al
    jne notf
    mov leftCheck,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov leftCheck,1
    plane:

    ret
left1proc ENDP

up1proc PROC
    ;counterright

    mov esi,OFFSET maze1
    mov edx,counterup

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,character
    cmp ah,al
    jne notf
    mov upCheck,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov upCheck,1
    plane:

    ret
up1proc ENDP

down1proc PROC
    ;counterright

    mov esi,OFFSET maze1
    mov edx,counterdown

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,character
    cmp ah,al
    jne notf
    mov downCheck,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov downCheck,1
    plane:

    ret
down1proc ENDP



rightF1proc PROC
  ;counterright

    mov esi,OFFSET maze1
    mov edx,khanaRight

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star
    cmp ah,al
    jne notf
    mov khanaRightside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaRightside,1
    plane:

    ret
rightF1proc ENDP

leftF1proc PROC
  ;counterright

    mov esi,OFFSET maze1
    mov edx,khanaLeft
    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star
    cmp ah,al
    jne notf
    mov khanaLeftside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaLeftside,1
    plane:

    ret
leftF1proc ENDP

upF1proc PROC
    ;counterright

    mov esi,OFFSET maze1
    mov edx,khanaUper

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star
    cmp ah,al
    jne notf
    mov khanaUpside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaUpside,1
    plane:
    
    ret
upF1proc ENDP


downF1proc PROC
    ;counterright

    mov esi,OFFSET maze1
    mov edx,khanaNecha

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star
    cmp ah,al
    jne notf
    mov khanaDownside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaDownside,1
    plane:

    ret
downF1proc ENDP


rightFE1proc PROC
  ;counterright

    mov esi,OFFSET maze1
    mov edx,khanaRightextra

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star1
    cmp ah,al
    jne notf
    mov khanaRightextraside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaRightextraside,1
    plane:

    ret
rightFE1proc ENDP

leftFE1proc PROC
  ;counterright

    mov esi,OFFSET maze1
    mov edx,khanaLeftextra

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star1
    cmp ah,al
    jne notf
    mov khanaLeftextraside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaLeftextraside,1
    plane:

    ret
leftFE1proc ENDP

upFE1proc PROC
    ;counterright

    mov esi,OFFSET maze1
    mov edx,khanaUperextra

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star1
    cmp ah,al
    jne notf
    mov khanaUpextraside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaUpextraside,1
    plane:
    
    ret
upFE1proc ENDP


downFE1proc PROC
    ;counterright

    mov esi,OFFSET maze1
    mov edx,khanaNechaextra

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star1
    cmp ah,al
    jne notf
    mov khanaDownextraside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaDownextraside,1
    plane:

    ret
downFE1proc ENDP



pauseMenu2 PROC
	mov eax, white + (black * 16)
	call SetTextColor

	mov dl, 90
	mov dh, 14
	call gotoxy
	mov edx, OFFSET pause_prompt
	call writestring


	pauseMenu_loop:
		mov eax, 0
		call readChar
		cmp al, 'p'
		je start__game

		jmp pauseMenu_loop

	start__game:
    	mov dl, 90
	mov dh, 14
	call gotoxy
	mov edx, OFFSET mazree
	call writestring
		jmp to__end


	to__end:
		ret
pauseMenu2 ENDP







;====================================================================================================
;====================================================================================================
;======================LEVEL TWO MAZE================================================================
;====================================================================================================
;====================================================================================================
MazeHee PROC

    mov esi, OFFSET mazeLayout
    mov edi, OFFSET maze1

    mov ecx, 2268 ; 28*79
    L1: 
        mov bl, [edi]
        mov [esi], bl
        inc esi
        inc edi
        loop L1

	
	mov eax, blue + (black * 16)
	call setTextColor
	mov esi, OFFSET mazeLayout
	mov bl, 28
	mov ecx, 0
	mov cl, 28
	mov dl, 0
	mov dh, 1
	call gotoxy

	draw_maze:
		mov bl, cl
		mov cl, 81
		draw_row:
			mov eax, 0
			mov al, [esi]

			cmp al, '.'
			je draw_coin
            
			cmp al, '*'
			je draw_star
			cmp al, '<'
			je draw_player
			cmp al, '@'
			je draw_ghost

			mov eax, blue + (black * 16)
			call setTextColor
			jmp end_drawRow

			draw_coin:
				mov eax, green + (black * 16)
				call setTextColor
				jmp end_drawRow
                
			draw_star:
				mov eax, yellow + (black * 16)
				call setTextColor
				jmp end_drawRow

			draw_ghost:
				mov eax, red + (black * 16)
				call setTextColor
				jmp end_drawRow

			draw_player:
				mov eax, yellow + (black * 16)
				call setTextColor

			end_drawRow:
				mov eax, 0
				mov al, [esi]
				call writeChar
				inc esi

			loop draw_row

		mov dl ,0
		inc dh
		call gotoxy
		mov cl, bl
		loop draw_maze

    ret
MazeHee ENDP






;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL 3 PROC;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

LevelThree PROC 

     call Clrscr 
    call MazeHeer
 

   call DrawPlayer
  
    ;call CreateRandomCoin
    ;call DrawCoin

    call Randomize
    call DrawEnemy

  mov esi ,OFFSET mz1


    gameLoop:

    
     ;return 
    
    cmp score,140
    je hi
    jmp  hello
    hi:
    ret
    hello:



    ;enemy collision
        mov al,xPos
        mov bl,yPos
        cmp al,xEnemyPos
        je m2

        jmp lastpoint
        m2:

        cmp bl,yEnemyPos
        je m1
        jmp lastpoint
        m1:

        dec lives



        lastpoint:

        cmp lives,0
        je exitGame









    call UpdateEnemy
 ;4 if cases
        cmp rasta,1
        jne jump2
        
        inc yEnemyPos
        inc rasta 
     

         ;statements for 1
        jmp endingpoint
        jump2:
        cmp rasta,2
        jne jump3
        
        inc xEnemyPos
        inc rasta
  

         ;statements for 2

        jmp endingpoint
        jump3:
        cmp rasta,3
        jne jump4
        inc rasta
        dec yEnemyPos

        ;statements for 3
        
        jmp endingpoint
        jump4:
        cmp rasta,4
        jne jump5
        inc rasta
        dec xEnemyPos
        mov rasta,1




        cmp rasta,5
        jne jump6
        
        inc yEnemyPos
        inc rasta 
     

         ;statements for 4
        jmp endingpoint
        jump5:
        cmp rasta,5
        jne jump6
        
        inc xEnemyPos
        inc rasta
  

         ;statements for 2

        jmp endingpoint
        jump6:
        cmp rasta,6
        jne jump7
        inc rasta
        dec yEnemyPos

        ;statements for 3
        
        jmp endingpoint
        jump7:
        cmp rasta,7
        jne jump8
        inc rasta
        dec xEnemyPos
        mov rasta,1

         ;statements for 4
         jmp endingpoint
        jump8:

        endingpoint:
    call DrawEnemy 

call right2proc
call down2proc
call up2proc
call left2proc



          
call rightF2proc
call downF2proc
call upF2proc
call leftF2proc

     
call rightFE2proc
call downFE2proc
call upFE2proc
call leftFE2proc


        mov bl,xPos
        cmp bl,xCoinPos
        jne notCollecting
        mov bl,yPos
        cmp bl,yCoinPos
        jne notCollecting
        ; player is intersecting coin:
        inc score
        call CreateRandomCoin
        call DrawCoin
        notCollecting:

        mov eax,white (black * 16)
        call SetTextColor

        ; draw score:
        mov dl,0
        mov dh,0
        call Gotoxy
        mov edx,OFFSET strScore
        call WriteString
        mov eax,score
        call WriteInt

        ; draw lives :
          mov dl,30
        mov dh,0
        call Gotoxy
        mov edx,OFFSET livecounter
        call WriteString
        mov al,lives
        call WriteInt






        ;mov eax,0
        
        mov al,0

        ;down box :
        mov dl,100
        mov dh,25
        call Gotoxy
        mov edx,OFFSET strrightcc
        call WriteString
        mov al,rightCheck
        call WriteInt





 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;KEYS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

        onGround:

       mov eax,100
        call Delay
        ; get user key input:
        call ReadKey
       
        mov inputChar,al

        ; exit game if user types 'x':
        cmp inputChar,"x"
        je exitGame

        cmp inputChar,"w"
        je moveUp

        cmp inputChar,"s"
        je moveDown

        cmp inputChar,"a"
        je moveLeft

        cmp inputChar,"d"
        je moveRight

          cmp inputChar,"p"
        je movepause
jmp gameloop 
moveUp:

    cmp upCheck,0
    je gameLoop

    

    ; Check if the player is not at the top boundary (yPos > 2)
    cmp yPos, 2
    jle boundaryReachedUp
     ;;;; heer down


    cmp khanaUpside,1
        je khananishtaU
        inc score



mov esi, OFFSET mz1
mov ecx, khanauper


    mov eax, esi
    add eax, ecx      
    
    mov byte ptr [eax], ' '


        khananishtaU:
        cmp khanaUpextraside,1
        je khananishtaEU
        add score,100

         khananishtaEU:

        ;;;;; heer up

    sub counterright,81
    sub counterleft,81
    sub counterup,81
    sub counterdown,81

    sub khanaRight,81
    sub khanaLeft,81
    sub khanaUper,81
    sub khanaNecha,81


    sub khanaRightextra,81
    sub khanaLeftextra,81
    sub khanaUperextra,81
    sub khanaNechaextra,81


    ; Your existing code for moving up
   
    call UpdatePlayer
    dec yPos
    call DrawPlayer
    jmp gameLoop

boundaryReachedUp:
    jmp gameLoop



moveDown:
    
    cmp downCheck,0
    je gameLoop

    

    ; Check if the player is not at the bottom boundary (yPos < 28)
    cmp yPos, 27
    jge boundaryReachedDown



    ;;;; heer down


    cmp khanaDownside,1
        je khananishta
        inc score

mov esi, OFFSET mz1
mov ecx, khanaNecha


    mov eax, esi
    add eax, ecx      
    
    mov byte ptr [eax], ' '


        khananishta:
         cmp khanaDownextraside,1
        je khananishtaED
        add score,100
        khananishtaED:

        ;;;;; heer up


    add counterright,81
    add counterleft,81
    add counterup,81
    add counterdown,81

    add khanaRight,81
    add khanaLeft,81
    add khanaUper,81
    add khanaNecha,81

    add khanaRightextra,81
    add khanaLeftextra,81
    add khanaUperextra,81
    add khanaNechaextra,81
    ; Your existing code for moving down
    call UpdatePlayer
    inc yPos
    call DrawPlayer
    jmp gameLoop

boundaryReachedDown:
    jmp gameLoop

moveLeft:
    


    cmp leftCheck,0
    je gameLoop

    

    
    ; Check if the player is not at the left boundary (xPos > 3)
    cmp xPos, 1
    jle boundaryReachedLeft
    

    ;;;; heer down


    cmp khanaLeftside,1
        je khananishtaL
        
        inc score

mov esi, OFFSET mz1
mov ecx, khanaLeft


    mov eax, esi
    add eax, ecx      
    
    mov byte ptr [eax], ' '


        khananishtaL:
         cmp khanaLeftextraside,1
        je khananishtaEL
        add score,100
        khananishtaEL:
        ;;;;; heer up


    sub counterright,1
    sub counterleft,1
    sub counterup,1
    sub counterdown,1

    sub khanaRight,1
    sub khanaLeft,1
    sub khanaUper,1
    sub khanaNecha,1

     sub khanaRightextra,1
    sub khanaLeftextra,1
    sub khanaUperextra,1
    sub khanaNechaextra,1

    ; Your existing code for moving left
    call UpdatePlayer
    dec xPos
    call DrawPlayer
    jmp gameLoop

boundaryReachedLeft:
    jmp gameLoop

moveRight:



    cmp rightCheck,0
    je gameLoop


    


    ; Check if the player is not at the right boundary (xPos < 82)
    cmp xPos, 79
    jge boundaryReachedRight


     ;;;; heer down


    cmp khanaRightside,1
        je khananishtaR
        
        inc score

mov esi, OFFSET mz1
mov ecx, khanaRight


    mov eax, esi
    add eax, ecx      
    
    mov byte ptr [eax], ' '


        khananishtaR:
         cmp khanaRightextraside,1
        je khananishtaER
        add score,100
        khananishtaER:

        ;;;;; heer up


    add counterright,1
    add counterleft,1
    add counterup,1
    add counterdown,1

    add khanaRight,1
    add khanaLeft,1
    add khanaUper,1
    add khanaNecha,1

    add khanaRightextra,1
    add khanaLeftextra,1
    add khanaUperextra,1
    add khanaNechaextra,1

    ; Your existing code for moving right
    call UpdatePlayer
    inc xPos
    call DrawPlayer
    jmp gameLoop

    movepause :

    call pauseMenu

      call DrawPlayer
    jmp gameLoop


boundaryReachedRight:
    jmp gameLoop

    jmp gameLoop

    exitGame:
    exit


LevelThree ENDP 















;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;LEVEL Three MOVESSSS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


right2proc PROC
    ;counterright

    mov esi,OFFSET mz1
    mov edx,counterright

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,character
    cmp ah,al
    jne notf
    mov rightCheck,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov rightCheck,1
    plane:

    ret
right2proc ENDP

left2proc PROC
    ;counterright

    mov esi,OFFSET mz1
    mov edx,counterleft

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,character
    cmp ah,al
    jne notf
    mov leftCheck,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov leftCheck,1
    plane:

    ret
left2proc ENDP

up2proc PROC
    ;counterright

    mov esi,OFFSET mz1
    mov edx,counterup

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,character
    cmp ah,al
    jne notf
    mov upCheck,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov upCheck,1
    plane:

    ret
up2proc ENDP

down2proc PROC
    ;counterright

    mov esi,OFFSET mz1
    mov edx,counterdown

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,character
    cmp ah,al
    jne notf
    mov downCheck,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov downCheck,1
    plane:

    ret
down2proc ENDP


rightF2proc PROC
  ;counterright

    mov esi,OFFSET mz1
    mov edx,khanaRight

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star
    cmp ah,al
    jne notf
    mov khanaRightside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaRightside,1
    plane:

    ret
rightF2proc ENDP

leftF2proc PROC
  ;counterright

    mov esi,OFFSET mz1
    mov edx,khanaLeft

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star
    cmp ah,al
    jne notf
    mov khanaLeftside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaLeftside,1
    plane:

    ret
leftF2proc ENDP

upF2proc PROC
    ;counterright

    mov esi,OFFSET mz1
    mov edx,khanaUper

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star
    cmp ah,al
    jne notf
    mov khanaUpside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaUpside,1
    plane:
    
    ret
upF2proc ENDP


downF2proc PROC
    ;counterright

    mov esi,OFFSET mz1
    mov edx,khanaNecha

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star
    cmp ah,al
    jne notf
    mov khanaDownside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaDownside,1
    plane:

    ret
downF2proc ENDP


rightFE2proc PROC
  ;counterright

    mov esi,OFFSET mz1
    mov edx,khanaRightextra

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star2
    cmp ah,al
    jne notf
    mov khanaRightextraside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaRightextraside,1
    plane:

    ret
rightFE2proc ENDP

leftFE2proc PROC
  ;counterright

    mov esi,OFFSET mz1
    mov edx,khanaLeftextra

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star2
    cmp ah,al
    jne notf
    mov khanaLeftextraside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaLeftextraside,1
    plane:

    ret
leftFE2proc ENDP

upFE2proc PROC
    ;counterright

    mov esi,OFFSET mz1
    mov edx,khanaUperextra

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star2
    cmp ah,al
    jne notf
    mov khanaUpextraside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaUpextraside,1
    plane:
    
    ret
upFE2proc ENDP


downFE2proc PROC
    ;counterright

    mov esi,OFFSET mz1
    mov edx,khanaNechaextra

    mov eax,esi
    add eax,edx
    mov al,[eax]
    mov ah,star2
    cmp ah,al
    jne notf
    mov khanaDownextraside,0
    jmp airport
    notf:
    mov ebx,0
    jmp car
    mov eax,0
    airport:
    jmp plane
    car:
    mov khanaDownextraside,1
    plane:

    ret
downFE2proc ENDP



pauseMenu3 PROC
	mov eax, white + (black * 16)
	call SetTextColor

	mov dl, 90
	mov dh, 14
	call gotoxy
	mov edx, OFFSET pause_prompt
	call writestring


	pauseMenu_loop:
		mov eax, 0
		call readChar
		cmp al, 'p'
		je start__game

		jmp pauseMenu_loop

	start__game:
    	mov dl, 90
	mov dh, 14
	call gotoxy
	mov edx, OFFSET mazree
	call writestring
		jmp to__end


	to__end:
		ret
pauseMenu3 ENDP



;====================================================================================================
;====================================================================================================
;======================LEVEL THREE MAZE===============================================================
;====================================================================================================
;====================================================================================================
MazeHeer PROC

    mov esi, OFFSET mazeLayout
    mov edi, OFFSET mz1

    mov ecx, 2268 ; 28*79
    L1: 
        mov bl, [edi]
        mov [esi], bl
        inc esi
        inc edi
        loop L1

	
	mov eax, blue + (black * 16)
	call setTextColor
	mov esi, OFFSET mazeLayout
	mov bl, 28
	mov ecx, 0
	mov cl, 28
	mov dl, 0
	mov dh, 1
	call gotoxy

	draw_maze:
		mov bl, cl
		mov cl, 81
		draw_row:
			mov eax, 0
			mov al, [esi]

			cmp al, '.'
			je draw_coin
            cmp al, '$'
			je draw_star
			cmp al, '<'
			je draw_player
			cmp al, '@'
			je draw_ghost

			mov eax, blue + (black * 16)
			call setTextColor
			jmp end_drawRow

			draw_coin:
				mov eax, green + (black * 16)
				call setTextColor
				jmp end_drawRow

           draw_star:
                mov eax, red + (black * 16)
				call setTextColor
				jmp end_drawRow
			draw_ghost:
				mov eax, red + (black * 16)
				call setTextColor
				jmp end_drawRow

			draw_player:
				mov eax, yellow + (black * 16)
				call setTextColor

			end_drawRow:
				mov eax, 0
				mov al, [esi]
				call writeChar
				inc esi

			loop draw_row

		mov dl ,0
		inc dh
		call gotoxy
		mov cl, bl
		loop draw_maze

    ret
MazeHeer ENDP



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; PLAYER ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




DrawPlayer PROC
    ; draw player at (xPos,yPos):
    mov eax,yellow ;(blue*16)
    call SetTextColor
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al,"<"
    call WriteChar
    ret
DrawPlayer ENDP

UpdatePlayer PROC
    mov dl,xPos
    mov dh,yPos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdatePlayer ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 1ST ENEMY ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DrawEnemy PROC
    ; draw player at (xPos,yPos):
    mov eax,blue ;(blue*16)
    call SetTextColor
    mov dl,xEnemyPos
    mov dh,yEnemyPos
    call Gotoxy
    mov al,"@"
    call WriteChar
    ret
DrawEnemy ENDP

UpdateEnemy PROC
    mov dl,xEnemyPos
    mov dh,yEnemyPos
    call Gotoxy
    mov al," "
    call WriteChar
    ret
UpdateEnemy  ENDP












;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; SOUND     ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;




;;;;;;;;;;MENU SOUND;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
PlayMenuSound PROC
    mov eax, SND_FILENAME
      or eax, SND_LOOP       ;; Play in a loop
    or eax, SND_ASYNC      ;; Play in the background

    invoke PlaySound, addr menuSoundFile, 0, eax
    ret
PlayMenuSound ENDP



PlayMenuSound2 PROC
    mov eax, SND_FILENAME
      or eax, SND_LOOP       ;; Play in a loop
    or eax, SND_ASYNC      ;; Play in the background

    invoke PlaySound, addr menuSoundFile2, 0, eax
    ret
PlayMenuSound2 ENDP



PlayMenuSound3 PROC
    mov eax, SND_FILENAME
      or eax, SND_LOOP       ;; Play in a loop
    or eax, SND_ASYNC      ;; Play in the background

    invoke PlaySound, addr menuSoundFile3, 0, eax
    ret
PlayMenuSound3 ENDP





PlayMenuSound4 PROC
    mov eax, SND_FILENAME
      or eax, SND_LOOP       ;; Play in a loop
    or eax, SND_ASYNC      ;; Play in the background

    invoke PlaySound, addr menuSoundFile4, 0, eax
    ret
PlayMenuSound4 ENDP





;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EATING;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

Eatingdinner PROC 
 mov eax, SND_FILENAME
      or eax, SND_LOOP       ;; Play in a loop
    or eax, SND_ASYNC      ;; Play in the background

    invoke PlaySound, addr eatingFile, 0, eax
    ret
    Eatingdinner ENDP 

    Eatingdinner1 PROC 
 mov eax, SND_FILENAME
      or eax, SND_LOOP       ;; Play in a loop
    or eax, SND_ASYNC      ;; Play in the background

    invoke PlaySound, addr eatingFile1, 0, eax
    ret
    Eatingdinner1 ENDP 

     Eatingdinner2 PROC 
 mov eax, SND_FILENAME
      or eax, SND_LOOP       ;; Play in a loop
    or eax, SND_ASYNC      ;; Play in the background

    invoke PlaySound, addr eatingFile2, 0, eax
    ret
    Eatingdinner2 ENDP
StopSound PROC
    ; Use PlaySound with NULL as pszSound to stop any currently playing sound
    invoke PlaySound, NULL, 0, 0  ; Pass NULL as pszSound and 0 for other flags
    ret
StopSound ENDP




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; WASTE  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



DrawCoin PROC
    
    mov eax, yellow 
    call SetTextColor
    mov dl, xCoinPos
    mov dh, yCoinPos
    call Gotoxy
    mov al, "."
    call WriteChar

    mov bl, xPos
    cmp bl, xCoinPos
    jne coinNotCollected
    mov bl, yPos
    cmp bl, yCoinPos
    jne coinNotCollected

    ; If player intersects, increment the score
    inc score

    ; Update the displayed score
    mov dl, 15     ; X position for displaying score
    mov dh, 0      ; Y position
    call Gotoxy
    mov edx, OFFSET strScore
    call WriteString
    mov eax, score
    call WriteInt

    ; Create a new random coin
    call CreateRandomCoin

coinNotCollected:
    ret
DrawCoin ENDP

CreateRandomCoin PROC
    mov eax, 100
    inc eax
    call RandomRange
    mov xCoinPos, al
    mov yCoinPos, 27
    ret
CreateRandomCoin ENDP

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;WELCOME MESSAGE ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



ChangeBackgroundColor PROC
    mov ecx,  3    ; Loop counter for 5 seconds

ColorLoop:
    mov eax, cyan + (white * 16)    
    call SetTextColor
    mov eax, 100                    
    call Delay
    call Clrscr                     

    mov eax, red + (red * 16)    
    call SetTextColor
    mov eax, 100                    
    call Delay
    call Clrscr                    

     mov eax, green + (black * 16) 
     call SetTextColor
     mov eax, 100                  
     call Delay
     call Clrscr                  

   mov eax, cyan + (white * 16)    
    call SetTextColor
    mov eax, 100                    
    call Delay
    call Clrscr  
    mov eax, red + (black * 16)    
    call SetTextColor
    mov eax, 100                    
    call Delay
    call Clrscr                     

    loop ColorLoop

    ret
ChangeBackgroundColor ENDP


















Menu PROC 

 mov eax, yellow    
    call SetTextColor
    mov edx, 10      
    mov ecx, 5        
    call Gotoxy       
  



   mov eax, red   
     call SetTextColor
    mov edx, OFFSET C1 
    call WriteString           
   call crlf

   mov edx, OFFSET C2 
    call WriteString           
    call crlf
   
   mov edx, OFFSET C3 
    call WriteString           
   call crlf
   
   mov edx, OFFSET C4 
    call WriteString           
   call crlf
  
  mov edx, OFFSET C5 
    call WriteString           
   call crlf
   mov eax, yellow  
     call SetTextColor
  mov edx, OFFSET C6 
    call WriteString           
   call crlf

   mov edx, OFFSET C7
    call WriteString           
   call crlf

     
    mov edx, OFFSET C8 
    call WriteString           
   call crlf

   mov edx, OFFSET C9
    call WriteString           
    call crlf
   
   mov edx, OFFSET Ca 
    call WriteString           
   call crlf
   
   mov edx, OFFSET Cb 
    call WriteString           
   call crlf
  
  mov edx, OFFSET Cc
    call WriteString           
   call crlf
  
  mov edx, OFFSET Cd 
    call WriteString           
   call crlf

   mov edx, OFFSET Ce
    call WriteString           
   call crlf

    mov eax, red  
     call SetTextColor
    mov edx, OFFSET Cf 
    call WriteString           
   call crlf

   mov edx, OFFSET Cg
    call WriteString           
    call crlf
   
   mov edx, OFFSET Cy 
    call WriteString           
   call crlf
   
   mov edx, OFFSET Ci 
    call WriteString           
   call crlf
   mov eax, white  
     call SetTextColor
  mov edx, OFFSET Cj
    call WriteString           
   call crlf
  
  mov edx, OFFSET Ck 
    call WriteString           
   call crlf

   mov edx, OFFSET Cz
    call WriteString           
   call crlf
     
    mov edx, OFFSET Cm
    call WriteString           
   call crlf

    mov eax, red   
     call SetTextColor
   mov edx, OFFSET Cn
    call WriteString           
    call crlf
   
   mov edx, OFFSET Co 
    call WriteString           
   call crlf
   
   mov edx, OFFSET Cp 
    call WriteString           
   call crlf
  
  mov edx, OFFSET Cq
    call WriteString           
   call crlf
  
  mov edx, OFFSET Cr 
    call WriteString           
   call crlf

   mov edx, OFFSET Cw
    call WriteString           
   call crlf
    
    mov edx, OFFSET Ct 
    call WriteString           
   call crlf

   mov edx, OFFSET Cu
    call WriteString           
    call crlf
   
   mov edx, OFFSET Cv 
    call WriteString           
   call crlf
  mov eax, white   
     call SetTextColor

     mov eax, 5000               
    call Delay
    
    call Clrscr   
    

    ret

Menu ENDP














WelcomeMessage PROC

   call PlayMenuSound
   mov eax, 1000
   call Delay
    mov eax, yellow    
    call SetTextColor
    mov edx, 10      
    mov ecx, 5        
    call Gotoxy       
    call ChangeBackgroundColor
    call Clrscr   
    call StopSound
   
   call PlayMenuSound2
    mov edx, OFFSET welcomeT1 
    call WriteString           
   call crlf

   mov edx, OFFSET welcomeT2 
    call WriteString           
    call crlf
   
   mov edx, OFFSET welcomeT3 
    call WriteString           
   call crlf
   
   mov edx, OFFSET welcomeT4 
    call WriteString           
   call crlf
  
  mov edx, OFFSET welcomeT5 
    call WriteString           
   call crlf
  
  mov edx, OFFSET welcomeT6 
    call WriteString           
   call crlf

   mov edx, OFFSET welcomeT
    call WriteString           
   call crlf


    mov eax, white    
    call SetTextColor
    mov edx, OFFSET welcomeText1 
    call WriteString  
   call crlf

      mov eax, red   
    call SetTextColor
   mov edx, OFFSET welcomeText2 
    call WriteString           
   call crlf

      mov eax, white     
    call SetTextColor
   mov edx, OFFSET welcomeText3 
    call WriteString           
   call crlf

      mov eax, red   
    call SetTextColor
   mov edx, OFFSET welcomeText4 
    call WriteString           
   call crlf
      mov eax, white   
    call SetTextColor
   mov edx, OFFSET welcomeText5 
    call WriteString           
   call crlf

      mov eax, red   
    call SetTextColor
   mov edx, OFFSET welcomeText6 
    call WriteString           
   call crlf

   mov eax, white   
    call SetTextColor
   mov edx, OFFSET welcomeText7 
    call WriteString           
   call crlf

   mov eax, red  
    call SetTextColor
   mov edx, OFFSET welcomeText8
    call WriteString           
   call crlf

   mov eax, white   
    call SetTextColor
   mov edx, OFFSET welcomeText9 
    call WriteString           
   call crlf
    
   mov eax, red  
    call SetTextColor
   mov edx, OFFSET welcomeText0
    call WriteString           
   call crlf


   mov eax, white  
    call SetTextColor
   mov edx, OFFSET welcomeText10
    call WriteString           
   call crlf

   mov eax, red  
    call SetTextColor
   mov edx, OFFSET welcomeText11
    call WriteString           
   call crlf

   
   mov eax, white  
    call SetTextColor
   mov edx, OFFSET welcomeText12
    call WriteString           
   call crlf

   mov eax, red  
    call SetTextColor
   mov edx, OFFSET welcomeText13
    call WriteString           
   call crlf

  
   mov eax, white 
    call SetTextColor
   mov edx, OFFSET welcomeText14
    call WriteString           
   call crlf


    mov eax, 2000               
    call Delay
    
    call Clrscr   
    call StopSound

   call  PlayMenuSound3



     mov dl,40
        mov dh,10
        call Gotoxy
    mov edx, OFFSET namePrompt
    call WriteString
    mov edx, OFFSET userNameBuffer
    mov ecx, 32 
    call ReadString
    call Menu
        call StopSound
        
    ret
WelcomeMessage ENDP

loose PROC 
 mov edx, OFFSET looseText1 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText2 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText3 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText4 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText5 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText6 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText7 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText8 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText9 
    call WriteString           
    call crlf

     mov edx, OFFSET namePrompt
    call WriteString
        mov edx, OFFSET usernameBuffer
    call WriteString
     mov edx,OFFSET strScore
        call WriteString
    mov eax,0 
    mov eax,score
    call Writedec


ret 
loose ENDP


won PROC 
 mov edx, OFFSET looseText11 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText12 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText13 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText14 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText15 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText16 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText17 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText18 
    call WriteString           
    call crlf
    mov edx, OFFSET looseText19 
    call WriteString           
    call crlf



    mov edx, OFFSET namePrompt
    call WriteString
        mov edx, OFFSET usernameBuffer
    call WriteString
     mov edx,OFFSET strScore
        call WriteString
    mov eax,0 
    mov eax,score
    call Writedec

ret 
won ENDP



END main