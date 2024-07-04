@echo:Example; srt_inject_dsp bgm.srt 10 s_bgm_28.ssd newL.dsp newR.dsp --- Changes Wasteland Song
:start

:stereo
cls
@echo ---------------------------------------------------
@echo BRSTM to SSD
@echo ---------------------------------------------------
@echo *BRSTM files* (in \brstm)
@echo ---------------------------------------------------
@dir /b brstm\*.BRSTM
@echo ---------------------------------------------------
@set /P song=Type the name of the song you want to use, without the extension:

cls

@tools\revb --extract brstm\%song%.brstm brstm\%song%L.dsp brstm\%song%R.dsp
cls

@tools\dspadpcm -d brstm\%song%L.dsp
@tools\dspadpcm -d brstm\%song%R.dsp

cls

@tools\DSPADPCM -e %song%L.wav %song%L.DSP -cnew%song%L.txt
@tools\DSPADPCM -e %song%R.wav %song%R.DSP -cnew%song%R.txt

cls


cls

@echo /P new=Type new and press enter:

;cls

@move %song%L.dsp temp
@move %song%R.dsp temp

@rename temp\%song%L.dsp newL.dsp
@rename temp\%song%R.dsp newR.dsp
cls

cls

del brstm\*.dsp
del *.txt
del *.wav
del temp\*.brstm
del rstm
del %song%L.dsp
del %song%R.dsp

cls
@echo Type the number of the song you want to replace and press Enter
@echo 1 - Wasteland                       23 - Vs Screen (Pre-Battle)
@echo 2 - Yatterman's Workshop            24 - Here comes a New Hero
@echo 3 - Washinkyo, Amehon               25 - Continue Screen
@echo 4 - Galactor Base                   26 - Winner Screen
@echo 5 - Burning Wasteland               27 - Game Over
@echo 6 - Les Vagas                       28 - Wifi Mode
@echo 7 - Daigo Temple (Cherry Blossoms)  29 - Secret Factor
@echo 8 - Gesellschaft (Clear Skies)      30 - Ending 1 
@echo 9 - Aensland Castle                 31 - Ending 2
@echo 10 - Uncharted Region of China      32 - Ending 3
@echo 11 - Daigo Temple (Moonlight)       33 - Ending 4 
@echo 12 - Gesellschaft (Storm)           34 - Secret Menu 
@echo 13 - Orbital Ring Systems Cargo Bay 35 - Extra Menu 
@echo 14 - Willamette Parkview Mall       36 - Extra Menu 2
@echo 15 - Training Stage                 37 - Ranking  
@echo 16 - Yami Battle First Form         38 - Unlock SFX
@echo 17 - Yami Battle Second Form        39 - The Can-Can Dance (Staff Roll Version)
@echo 18 - Yami Battle Third Form         40 - Where the Wind Blows
@echo 19 - Title Screen                   41 - Ultimate All-shooters (Title)
@echo 20 - Main Menu                      42 - Ultimate All-shooters (Stage)
@echo 21 - Stage Select                   43 - Ultimate All-shooters (Boss)
@echo 22 - Character Select                                    
@set /P song=
cls
@if '%song%'=='1' goto 1
@if '%song%'=='2' goto 2
@if '%song%'=='3' goto 3
@if '%song%'=='4' goto 4
@if '%song%'=='5' goto 5
@if '%song%'=='6' goto 6
@if '%song%'=='7' goto 7
@if '%song%'=='8' goto 8
@if '%song%'=='9' goto 9
@if '%song%'=='10' goto 10
@if '%song%'=='11' goto 11
@if '%song%'=='12' goto 12
@if '%song%'=='13' goto 13
@if '%song%'=='14' goto 14
@if '%song%'=='15' goto 15
@if '%song%'=='16' goto 16
@if '%song%'=='17' goto 17
@if '%song%'=='18' goto 18
@if '%song%'=='19' goto 19
@if '%song%'=='20' goto 20
@if '%song%'=='21' goto 21
@if '%song%'=='22' goto 22
@if '%song%'=='23' goto 23
@if '%song%'=='24' goto 24
@if '%song%'=='25' goto 25
@if '%song%'=='26' goto 26
@if '%song%'=='27' goto 27
@if '%song%'=='28' goto 28
@if '%song%'=='29' goto 29
@if '%song%'=='30' goto 30
@if '%song%'=='31' goto 31
@if '%song%'=='32' goto 32
@if '%song%'=='33' goto 33
@if '%song%'=='34' goto 34
@if '%song%'=='35' goto 35
@if '%song%'=='36' goto 36
@if '%song%'=='37' goto 37
@if '%song%'=='38' goto 38
@if '%song%'=='39' goto 39
@if '%song%'=='40' goto 40
@if '%song%'=='41' goto 41
@if '%song%'=='42' goto 42
@if '%song%'=='43' goto 43
cls

srt_inject_dsp bgm.srt 0 temp.ssd temp.zwdsp

:40
srt_inject_dsp bgm.srt 1 s_bgm_19.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:41
srt_inject_dsp bgm.srt 2 s_bgm_20.ssd temp\newL.dsp temp\newR.dsp 
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:42
srt_inject_dsp bgm.srt 3 s_bgm_21.ssd temp\newL.dsp temp\newR.dsp 
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:43
srt_inject_dsp bgm.srt 4 s_bgm_22.ssd temp\newL.dsp temp\newR.dsp
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:28
srt_inject_dsp bgm.srt 5 s_bgm_23.ssd temp\newL.dsp temp\newR.dsp 
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:22
srt_inject_dsp bgm.srt 6 s_bgm_24.ssd temp\newL.dsp temp\newR.dsp 
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:21
srt_inject_dsp bgm.srt 7 s_bgm_25.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:26
srt_inject_dsp bgm.srt 8 s_bgm_26.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:25
srt_inject_dsp bgm.srt 9 s_bgm_27.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:23
srt_inject_dsp bgm.srt 10 s_bgm_28.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:27
srt_inject_dsp bgm.srt 11 s_bgm_29.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:24 
srt_inject_dsp bgm.srt 12 s_bgm_30.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:19
srt_inject_dsp bgm.srt 13 s_bgm_31.ssd temp\newL.dsp temp\newR.dsp
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:16
srt_inject_dsp bgm.srt 14 s_bgm_32.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:17
srt_inject_dsp bgm.srt 15 s_bgm_33.ssd temp\newL.dsp temp\newR.dsp
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:18
srt_inject_dsp bgm.srt 16 s_bgm_34.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

srt_inject_dsp bgm.srt 17 s_bgm_35.ssd temp\newL.dsp temp\newR.dsp  ; The can-Can Dance (Unused Version?)
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:29 
srt_inject_dsp bgm.srt 18 s_bgm_36.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:30
srt_inject_dsp bgm.srt 19 s_bgm_37.ssd temp\newL.dsp temp\newR.dsp 
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:31
srt_inject_dsp bgm.srt 20 s_bgm_38.ssd temp\newL.dsp temp\newR.dsp 
del temp\newL.dsp
del temp\newR.dsp
goto another
cls 

:32
srt_inject_dsp bgm.srt 21 s_bgm_39.ssd temp\newL.dsp temp\newR.dsp 
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:33
srt_inject_dsp bgm.srt 22 s_bgm_40.ssd temp\newL.dsp temp\newR.dsp 
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:34
srt_inject_dsp bgm.srt 23 s_bgm_41.ssd temp\newL.dsp temp\newR.dsp
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:20
srt_inject_dsp bgm.srt 24 s_bgm_42.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:35
srt_inject_dsp bgm.srt 25 s_bgm_43.ssd temp\newL.dsp temp\newR.dsp
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:36
srt_inject_dsp bgm.srt 26 s_bgm_44.ssd temp\newL.dsp temp\newR.dsp
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:39
srt_inject_dsp bgm.srt 27 s_bgm_45.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:37
srt_inject_dsp bgm.srt 28 s_bgm_46.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:38
srt_inject_dsp bgm.srt 29 s_bgm_47.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:1
srt_inject_dsp bgm.srt 30 stage_01.ssd temp\newL.dsp temp\newR.dsp 
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:2
srt_inject_dsp bgm.srt 31 stage_02.ssd temp\newL.dsp temp\newR.dsp 
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:3
srt_inject_dsp bgm.srt 32 stage_03.ssd temp\newL.dsp temp\newR.dsp 
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:4
cls
srt_inject_dsp bgm.srt 33 stage_04.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:5
srt_inject_dsp bgm.srt 34 stage_05.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:6
srt_inject_dsp bgm.srt 35 stage_06.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:7
srt_inject_dsp bgm.srt 36 stage_07.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:8
srt_inject_dsp bgm.srt 37 stage_08.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:9
srt_inject_dsp bgm.srt 38 stage_09.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:10
srt_inject_dsp bgm.srt 39 stage_10.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:11
srt_inject_dsp bgm.srt 40 stage_11.ssd temp\newL.dsp temp\newR.dsp
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:12
srt_inject_dsp bgm.srt 41 stage_12.ssd temp\newL.dsp temp\newR.dsp
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:13
srt_inject_dsp bgm.srt 42 stage_13.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:14
srt_inject_dsp bgm.srt 43 stage_14.ssd temp\newL.dsp temp\newR.dsp 
del temp\newL.dsp
del temp\newR.dsp
goto another
cls

:15
srt_inject_dsp bgm.srt 44 stage_17.ssd temp\newL.dsp temp\newR.dsp  
del temp\newL.dsp
del temp\newR.dsp
goto another
cls



:another
cls
@echo Yes, It was supposed to be that quick
@echo Would you like to replace another song? 1=Yes 2=No
@set /P next=
@if '%next%'=='1' goto Stereo
@if '%next%' =='2' goto :exit
goto :exit



:exit
exit