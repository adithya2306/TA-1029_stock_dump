# fihtdc, DanielYJHsieh, 20141205, add for FQC audio loopback
# For FQC audio loopback

fqcaudio=`getprop debug.sys.fqcaudio`
case "$fqcaudio" in
    "11")
			tinymix 'LOOPBACK Mode' 1
			tinymix 'Loopback MCLK' 1
			tinymix 'DEC1 MUX' 'ADC1' 
			tinymix 'IIR1 INP1 MUX' 'DEC1' 
			tinymix 'RX1 MIX1 INP1' 'IIR1' 
			tinymix 'RX2 MIX1 INP1' 'IIR1' 
			tinymix 'RDAC2 MUX' 'RX2' 
			tinymix 'HPHL' 'Switch' 
			tinymix 'HPHR' 'Switch' 
    ;;
    "10")
			tinymix 'DEC1 MUX' 'ZERO' 
			tinymix 'IIR1 INP1 MUX' 'ZERO' 
			tinymix 'RX1 MIX1 INP1' 'ZERO' 
			tinymix 'RX2 MIX1 INP1' 'ZERO' 
			tinymix 'RDAC2 MUX' 'ZERO' 
			tinymix 'HPHL' 'ZERO' 
			tinymix 'HPHR' 'ZERO' 
			tinymix 'Loopback MCLK' 0
			tinymix 'LOOPBACK Mode' 0
    ;;
    "21")
			tinymix 'LOOPBACK Mode' 1
			tinymix 'Loopback MCLK' 1
			tinymix 'DEC1 MUX' 'ADC2' 
			tinymix 'ADC2 MUX' 'INP3' 
			tinymix 'IIR1 INP1 MUX' 'DEC1' 
			tinymix 'RX1 MIX1 INP1' 'IIR1' 
			tinymix 'RX2 MIX1 INP1' 'IIR1' 
			tinymix 'RDAC2 MUX' 'RX2' 
			tinymix 'HPHL' 'Switch' 
			tinymix 'HPHR' 'Switch' 
    ;;
    "20")
			tinymix 'DEC1 MUX' 'ZERO' 
			tinymix 'ADC2 MUX' 'ZERO' 
			tinymix 'IIR1 INP1 MUX' 'ZERO' 
			tinymix 'RX1 MIX1 INP1' 'ZERO' 
			tinymix 'RX2 MIX1 INP1' 'ZERO' 
			tinymix 'RDAC2 MUX' 'ZERO' 
			tinymix 'HPHL' 'ZERO' 
			tinymix 'HPHR' 'ZERO' 
			tinymix 'Loopback MCLK' 0
			tinymix 'LOOPBACK Mode' 0
    ;;
    "31")
			tinymix 'LOOPBACK Mode' 1
			tinymix 'Loopback MCLK' 1
			tinymix 'DEC1 MUX' 'ADC2' 
			tinymix 'ADC2 MUX' 'INP2' 
			tinymix 'IIR1 INP1 MUX' 'DEC1' 
			tinymix 'RX1 MIX1 INP1' 'IIR1' 
			tinymix 'RX2 MIX1 INP1' 'IIR1' 
			tinymix 'RDAC2 MUX' 'RX2' 
			tinymix 'HPHL' 'Switch' 
			tinymix 'HPHR' 'Switch' 
    ;;
    "30")
			tinymix 'DEC1 MUX' 'ZERO' 
			tinymix 'ADC2 MUX' 'ZERO' 
			tinymix 'IIR1 INP1 MUX' 'ZERO' 
			tinymix 'RX1 MIX1 INP1' 'ZERO' 
			tinymix 'RX2 MIX1 INP1' 'ZERO' 
			tinymix 'RDAC2 MUX' 'ZERO' 
			tinymix 'HPHL' 'ZERO' 
			tinymix 'HPHR' 'ZERO' 
			tinymix 'Loopback MCLK' 0
			tinymix 'LOOPBACK Mode' 0
    ;;
    "41")
			tinymix 'LOOPBACK Mode' 1
			tinymix 'Loopback MCLK' 1
			tinymix 'DEC1 MUX' 'ADC2' 
			tinymix 'ADC2 MUX' 'INP2' 
			tinymix 'IIR1 INP1 MUX' 'DEC1' 
			tinymix 'RX1 MIX1 INP1' 'IIR1' 
			tinymix 'RX2 MIX1 INP1' 'IIR1' 
			tinymix 'RDAC2 MUX' 'RX2' 
			tinymix 'Headphone SW Switch' 'On' 
			tinymix 'HPHL' 'Switch' 
			tinymix 'HPHR' 'Switch' 
    ;;
    "40")
			tinymix 'DEC1 MUX' 'ZERO' 
			tinymix 'ADC2 MUX' 'ZERO' 
			tinymix 'IIR1 INP1 MUX' 'ZERO' 
			tinymix 'RX1 MIX1 INP1' 'ZERO' 
			tinymix 'RX2 MIX1 INP1' 'ZERO' 
			tinymix 'RDAC2 MUX' 'ZERO' 
			tinymix 'Headphone SW Switch' 'Off' 
			tinymix 'HPHL' 'ZERO' 
			tinymix 'HPHR' 'ZERO' 
			tinymix 'Loopback MCLK' 0
			tinymix 'LOOPBACK Mode' 0
    ;;
    "51")
			tinymix 'LOOPBACK Mode' 1
			tinymix 'Loopback MCLK' 1
			tinymix 'DEC1 MUX' 'ADC1' 
			tinymix 'IIR1 INP1 MUX' 'DEC1' 
			tinymix 'RX1 MIX1 INP1' 'IIR1' 
			tinymix 'RX2 MIX1 INP1' 'IIR1' 
			tinymix 'RDAC2 MUX' 'RX2' 
			tinymix 'Headphone SW Switch' 'On' 
			tinymix 'HPHL' 'Switch' 
			tinymix 'HPHR' 'Switch' 
    ;;
    "50")
			tinymix 'DEC1 MUX' 'ZERO' 
			tinymix 'IIR1 INP1 MUX' 'ZERO' 
			tinymix 'RX1 MIX1 INP1' 'ZERO' 
			tinymix 'RX2 MIX1 INP1' 'ZERO' 
			tinymix 'RDAC2 MUX' 'ZERO' 
			tinymix 'Headphone SW Switch' 'Off' 
			tinymix 'HPHL' 'ZERO' 
			tinymix 'HPHR' 'ZERO' 
			tinymix 'Loopback MCLK' 0
			tinymix 'LOOPBACK Mode' 0
    ;;
    "61")
			tinymix 'LOOPBACK Mode' 1
			tinymix 'Loopback MCLK' 1
			tinymix 'DEC1 MUX' 'ADC2' 
			tinymix 'ADC2 MUX' 'INP3' 
			tinymix 'IIR1 INP1 MUX' 'DEC1' 
			tinymix 'RX1 MIX1 INP1' 'IIR1' 
			tinymix 'RX2 MIX1 INP1' 'IIR1' 
			tinymix 'RDAC2 MUX' 'RX2' 
			tinymix 'Headphone SW Switch' 'On' 
			tinymix 'HPHL' 'Switch' 
			tinymix 'HPHR' 'Switch' 
    ;;
    "60")
			tinymix 'DEC1 MUX' 'ZERO' 
			tinymix 'ADC2 MUX' 'ZERO' 
			tinymix 'IIR1 INP1 MUX' 'ZERO' 
			tinymix 'RX1 MIX1 INP1' 'ZERO' 
			tinymix 'RX2 MIX1 INP1' 'ZERO' 
			tinymix 'RDAC2 MUX' 'ZERO' 
			tinymix 'Headphone SW Switch' 'Off' 
			tinymix 'HPHL' 'ZERO' 
			tinymix 'HPHR' 'ZERO' 
			tinymix 'Loopback MCLK' 0
			tinymix 'LOOPBACK Mode' 0
    ;;   
    *)
			setprop debug.sys.fqcaudio 0
    	;; #Do nothing
esac
