#!/bin/bash

mount /dev/mmcblk0p1


function dac() {
  # selezione del tipo di pc da installare
  dac=""
  clear
  while [ "$dac" == "" ] ; do
    cat <<-ECHOICE

	DAC

	00) SABRE ES90xx support 384khz
	01) Allo Boss Dac
	02) Allo MiniBoss Dac
	03) Allo DigiOne
	04) Allo Piano 2.1 Hi-Fi Dac
	05) Allo Piano Hi-Fi Dac
  06) Soekris DAM1021/1121 (I2S)
  07) RPi-DAC
  08) Generic-2 I2S (rpi-dac)
  09) DIAL-DAC
  10) Denafrips Pontus R2R Dac (I2S)
  11) DDDAC1794 NOS
  12) Buffalo II/IIIse
  12) Buffalo I
  14) Audiophonics ES9028 Dac
  15) Audiophonics ES9018 Dac
  16) Audiophonics ES9023 Dac
  17) Audiophonics ES9023 Dac Lte
  18) Audiophonics ES9023 Dac Txco
  19) Audiophonics PCM5102 Dac
  20) Audiophonics TDA1387 Dac
  21) DIYINHK ES9023 Dac
  22) Durio Sound PRO
  23) G2 Labs BerryNOS
  24) G2 Labs BerryNOS Red
  25) Generic-1 I2S (hifiberry-dac)
  26) HIFI DAC
  27) HIFIBerry DAC
  28) HIFIBerry DAC+ Light
  29) Hifimediy ES9023
  30) IanFIFO II
  31) Lucid Labs Raspberry Pi DAC
  32) Mamboberry HiFi DAC+
  33) Mamboberry LS DAC+
  34) Pi2Design 503HTA Hybrid Tube AMP
  35) Pimoroni pHAT DAC
  36) PlainDAC
  37) Pi2Design 502DAC
  39) Audiophonics PCM5122 Dac
  40) HIFI DAC+
  41) HIFIBerry DAC+
  42) HIFIBerry DAC+ Pro
  43) PlainDAC+
  44) PlainDSP
  45) Dion Audio LOCO
  46) HIFI Digi
  47) HIFI Digi+
  48) HIFIBerry Digi(Digi+)
  50) HIFIBerry Amp(Amp+)
  51) Pi2Design 502DAC PRO
  52) HIFIBerry Digi+ Pro
  53) IQaudIO Pi-AMP+
  54) IQaudIO Pi-DAC PRO
  55) IQaudIO Pi-DAC+
  56) IqaudIO Pi-DACZero
  57) IQaudIO Pi-DAC
  58) IQaudIO Pi-DigiAMP+
  59) PlainAMP
  60) RaspiPlay4
  61) Suptronics x400
  62) IQaudIO Pi-Digi+
  63) JustBoom AMP HAT(Zero)
  64) JustBoom DAC HAT(Zero)
  65) JustBoom Digi HAT(Zero)
  66) Red Rocks Audio DigiDAC1
  67) Audio on Board (Rpi)
  68) DAC USB	
ECHOICE
    
	
	read -N2 -p 'Enter the corresponding number (00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35|36|37|38|39|40|41|42|43|44|45|46|47|48|49|50|51|52|53|54|55|56|57|58|59|60|61|62|63|64|65|66|68):' sceltaDAC
    echo
    case "$sceltaDAC" in
      00)
	  dac="SABRE_ES90xx_support_384khz"
    ;;
    01)
    dac="Allo_Boss_Dac"
    ;;
    02)
    dac="Allo_MiniBoss_Dac"
    ;;
    03)
    dac="Allo_DigiOne"
    ;;
    04)
    dac="Allo_Piano_2.1_Hi-Fi_Dac"
    ;;
    05)
    dac="Allo_Piano_Hi-Fi_Dac"
    ;;
    06)
    dac="Soekris_DAM1021/1121_I2S"
    ;;
    07)
    dac="RPi-DAC"
    ;;
    08)
    dac="Generic-2_I2S_rpi-dac"
    ;;
    09)
    dac="DIAL-DAC"
    ;;
    10)
    dac="Denafrips_Pontus_R2R_Dac_I2S"
    ;;
    11)
    dac="DDDAC1794_NOS"
    ;;
    12)
    dac="Buffalo_II/IIIse"
    ;;
    12)
    dac="Buffalo_I"
    ;;
    14)
    dac="Audiophonics_ES9028_Dac"
    ;;
    15)
    dac="Audiophonics_ES9018_Dac"
    ;;
    16)
    dac="Audiophonics_ES9023_Dac"
    ;;
    17)
    dac="Audiophonics_ES9023_Dac_Lte"
    ;;
    18)
    dac="Audiophonics_ES9023_Dac_Txco"
    ;;
    19)
    dac="Audiophonics_PCM5102_Dac"
    ;;
    20)
    dac="Audiophonics_TDA1387_Dac"
    ;;
    21)
    dac="DIYINHK_ES9023_Dac"
    ;;
    22)
    dac="Durio_Sound_PRO"
    ;;
    23)
    dac="G2_Labs_BerryNOS"
    ;;
    24)
    dac="G2_Labs_BerryNOS_Red"
    ;;
    25)
    dac="Generic-1_I2S_hifiberry-dac"
    ;;
    26)
    dac="HIFI_DAC"
    ;;
    27)
    dac="HIFIBerry_DAC"
    ;;
    28)
    dac="HIFIBerry_DAC+_Light"
    ;;
    29)
    dac="Hifimediy_ES9023"
    ;;
    30)
    dac="IanFIFO_II"
    ;;
    31)
    dac="Lucid_Labs_Raspberry_Pi_DAC"
    ;;
    32)
    dac="Mamboberry_HiFi_DAC+"
    ;;
    33)
    dac="Mamboberry_LS_DAC+"
    ;;
    34)
    dac="Pi2Design_503HTA_Hybrid_Tube_AMP"
    ;;
    35)
    dac="Pimoroni_pHAT_DAC"
    ;;
    36)
    dac="PlainDAC"
    ;;
    37)
    dac="Pi2Design_502DAC"
    ;;
    39)
    dac="Audiophonics_PCM5122_Dac"
    ;;
    40)
    dac="HIFI_DAC+"
    ;;
    41)
    dac="HIFIBerry_DAC+"
    ;;
    42)
    dac="HIFIBerry_DAC+_Pro"
    ;;
    43)
    dac="PlainDAC+"
    ;;
    44)
    dac="PlainDSP"
    ;;
    45)
    dac="Dion_Audio_LOCO"
    ;;
    46)
    dac="HIFI_Digi"
    ;;
    47)
    dac="HIFI_Digi+"
    ;;
    48)
    dac="HIFIBerry_DigiDigi+"
    ;;
    50)
    dac="HIFIBerry_AmpAmp+"
    ;;
    51)
    dac="Pi2Design_502DAC_PRO"
    ;;
    52)
    dac="HIFIBerry_Digi+_Pro"
    ;;
    53)
    dac="IQaudIO_Pi-AMP+"
    ;;
    54)
    dac="IQaudIO_Pi-DAC_PRO"
    ;;
    55)
    dac="IQaudIO_Pi-DAC+"
    ;;
    56)
    dac="IqaudIO_Pi-DACZero"
    ;;
    57)
    dac="IQaudIO_Pi-DAC"
    ;;
    58)
    dac="IQaudIO_Pi-DigiAMP+"
    ;;
    59)
    dac="PlainAMP"
    ;;
    60)
    dac="RaspiPlay4"
    ;;
    61)
    dac="Suptronics_x400"
    ;;
    62)
    dac="IQaudIO_Pi-Digi+"
    ;;
    63)
    dac="JustBoom_AMP_HATZero"
    ;;
    64)
    dac="JustBoom_DAC_HATZero"
    ;;
    65)
    dac="JustBoom_Digi_HATZero"
    ;;
    66)
    dac="Red_Rocks_Audio_DigiDAC1"
	   ;;
    67)
    dac="Audio_on_Board_Rpi"
     ;;
    68)
    dac="DAC_USB"
     ;;
     *)
	  


    clear
	  echo -e "\a\nError: Unspecified selection.\nPlease enter a number between 0 and 1.\n"
    esac
    if [ "$dac" != "" ]; then
      echo -e "\nChoice made: DAC $dac\n"
      read -s -N1 -p 'Confirm and proceede? (s/N)'
      clear
      echo
      [ "$REPLY" != "s" ] && dac=""
    fi
  done
}


dac

case "$dac" in
  SABRE_ES90xx_support_384khz)
    dacnum="dac0"
    ;;
  Allo_Boss_Dac)
    dacnum="dac1"
    ;;  
  Allo_MiniBoss_Dac)
    dacnum="dac1"
    ;;
  Allo_DigiOne)
    dacnum="dac2"
    ;;
  Allo_Piano_2.1_Hi-Fi_Dac)
    dacnum="dac3"
    ;;
  Allo_Piano_Hi-Fi_Dac)
    dacnum="dac4"
    ;;
  Soekris_DAM1021/1121_I2S)
    dacnum="dac5"
    ;;
  RPi-DAC)
    dacnum="dac5"
    ;;
  Generic-2_I2S_rpi-dac)
    dacnum="dac5"
    ;;
  DIAL-DAC)
    dacnum="dac5"
    ;;
  Denafrips_Pontus_R2R_Dac_I2S)
    dacnum="dac5"
    ;;
  DDDAC1794_NOS)
    dacnum="dac5"
    ;;
  Buffalo_II/IIIse)
    dacnum="dac5"
    ;;
  Buffalo_I)
    dacnum="dac5"
    ;;
  Audiophonics_ES9028_Dac)
    dacnum="dac5"
    ;;  
  Audiophonics_ES9018_Dac)
    dacnum="dac5"
    ;;
  Audiophonics_ES9023_Dac)
    dacnum="dac6"
    ;;
  Audiophonics_ES9023_Dac_Lte)
    dacnum="dac6"
    ;;
  Audiophonics_ES9023_Dac_Txco)
    dacnum="dac6"
    ;;
  Audiophonics_PCM5102_Dac)
    dacnum="dac6"
    ;;
  Audiophonics_TDA1387_Dac)
    dacnum="dac6"
    ;;
  DIYINHK_ES9023_Dac)
    dacnum="dac6"
    ;;
  Durio_Sound_PRO)
    dacnum="dac6"
    ;;
  G2_Labs_BerryNOS)
    dacnum="dac6"
    ;;
  G2_Labs_BerryNOS_Red)
    dacnum="dac6"
    ;;
  Generic-1_I2S_hifiberry-dac)
    dacnum="dac6"
    ;;
  HIFI_DAC)
    dacnum="dac6"
    ;;  
  HIFIBerry_DAC)
    dacnum="dac6"
    ;;
  HIFIBerry_DAC+_Light)
    dacnum="dac6"
    ;;
  Hifimediy_ES9023)
    dacnum="dac6"
    ;;    
  IanFIFO_II)
    dacnum="dac6"
    ;;
  Lucid_Labs_Raspberry_Pi_DAC)
    dacnum="dac6"
    ;;
  Mamboberry_HiFi_DAC+)
    dacnum="dac6"
    ;;  
  Mamboberry_LS_DAC+)
    dacnum="dac6"
    ;;
  Pi2Design_503HTA_Hybrid_Tube_AMP)
    dacnum="dac6"
    ;;
  Pimoroni_pHAT_DAC)
    dacnum="dac6"
    ;;    
  PlainDAC)
    dacnum="dac6"
    ;;
  Pi2Design_502DAC)
    dacnum="dac7"
    ;;
  Audiophonics_PCM5122_Dac)
    dacnum="dac7"
    ;;  
  HIFI_DAC+)
    dacnum="dac7"
    ;;
  HIFIBerry_DAC+)
    dacnum="dac7"
    ;;
  HIFIBerry_DAC+_Pro)
    dacnum="dac7"
    ;;    
  PlainDAC+)
    dacnum="dac7"
    ;;
  PlainDSP)
    dacnum="dac7"
    ;;
  Dion_Audio_LOCO)
    dacnum="dac8"
    ;;  
  HIFI_Digi)
    dacnum="dac9"
    ;;
  HIFI_Digi+)
    dacnum="dac9"
    ;;
  HIFIBerry_DigiDigi+)
    dacnum="dac9"
    ;;    
  HIFIBerry_AmpAmp+)
    dacnum="dac10"
    ;;
  Pi2Design_502DAC_PRO)
    dacnum="dac11"
    ;;
  HIFIBerry_Digi+_Pro)
    dacnum="dac11"
    ;;  
  IQaudIO_Pi-AMP+)
    dacnum="dac12"
    ;;
  IQaudIO_Pi-DAC_PRO)
    dacnum="dac12"
    ;;
  IQaudIO_Pi-DAC+)
    dacnum="dac12"
    ;;    
  IqaudIO_Pi-DACZero)
    dacnum="dac12"
    ;;
  IQaudIO_Pi-DAC)
    dacnum="dac13"
    ;;
  IQaudIO_Pi-DigiAMP+)
    dacnum="dac13"
    ;;  
  PlainAMP)
    dacnum="dac13"
    ;;
  RaspiPlay4)
    dacnum="dac13"
    ;;
  Suptronics_x400)
    dacnum="dac13"
    ;;    
  IQaudIO_Pi-Digi+)
    dacnum="dac14"
    ;;
  JustBoom_AMP_HATZero)
    dacnum="dac15"
    ;;
  JustBoom_DAC_HATZero)
    dacnum="dac15"
    ;;  
  JustBoom_Digi_HATZero)
    dacnum="dac16"
    ;;
  Red_Rocks_Audio_DigiDAC1)
    dacnum="dac17"
    ;;
  Audio_on_Board_Rpi)
    dacnum="dac18"
    ;;
 DAC_USB)
    dacnum="dac19"
    ;;
  esac

clear

/gentooplayer/script/dac/$dacnum.sh
