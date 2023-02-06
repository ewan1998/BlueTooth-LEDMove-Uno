/^(\.text|\.data|\.rodata|\.bootloader)/ {arduino_size += $2 }
/^(\.data|\.bss|\.noinit)/ {arduino_data += $2 }
/^(\.eeprom)/ {arduino_eeprom += $2 }
END { print "\nSketch uses " arduino_size " bytes (" int(arduino_size/48640*100+0.5)  "%)  of program storage space. Maximum is " 48640 " bytes.\nGlobal variables use "arduino_data" bytes ("int(arduino_data/6144*100+0.5)"%) of dynamic memory, leaving "6144-arduino_data" bytes for local variables. Maximum is "6144" bytes.\n"}