.ps2
.open "..\..\..\1_extracted\DAT\OVL\12406.ovl", "..\..\..\3_patched\patched_temp\DAT\OVL\12406.ovl", 0x0358d00

;Fix by SymphoniaLauren
;Instruction edited to match new location of voice clips
.org 0x358f7c
    addiu a0, -0x06F90

;now we move the data desu
.org 0x359070
   .byte 0x04, 0x00, 0x00, 0x5F, 0x00, 0x00, 0x02, 0x00 ;Mao voice
   .byte 0x05, 0x00, 0x00, 0x5F, 0x66, 0x00, 0x01, 0x00 ;Veigue voice
   .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ;NO ANNIES ALLOWED
   .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 ;More padding desu
   
.close