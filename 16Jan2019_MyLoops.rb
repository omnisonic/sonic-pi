cajA = "/Users/omnisonic/Documents/code/sonic_pi/myloops/cajon_riff_146bmp_8bar_14Jan2018.wav"
cajB = "/Users/omnisonic/Documents/code/sonic_pi/myloops/cajon_riff_146bmp_4bar_14Jan2019.wav"
CajKick = "/Users/omnisonic/Documents/code/sonic_pi/myloops/cajon_kick_146bmp_8bar_14Jan2018.wav"
BrushA = "/Users/omnisonic/Documents/code/sonic_pi/myloops/brush_loop_146bmp_16bar_14Jan2019.wav"
Baldwin = "/Users/omnisonic/Documents/code/sonic_pi/Baldwin/"
Tabla = "/Users/omnisonic/Documents/code/sonic_pi/myloops/Tabla_146bmp_16bar_14Jan2018.wav"

GuitArp = "/Users/omnisonic/Documents/code/sonic_pi/myloops/Arpeggio_Em-Fmaj_146bmp_4bar_14Jan2018.wav"


use_bpm 146

live_loop :cajA1 do
  sample cajA
  sleep 32
end

live_loop :cajB1 do
  sample CajKick
  sleep 48
end

live_loop :Brushes do
  sample BrushA, pan: -0.76
  sleep 128
end


live_loop :baldwinNote do
  sample Baldwin, 19, rate: -0.75, amp:0
  sleep 32
end

live_loop :baldwinNote2 do
  sleep 16
  sample Baldwin, 17, rate: -1, amp:0
  sleep 32
  
end

live_loop :Tabla1 do
  sleep 32
  sample Tabla
  sleep 128
  
end

live_loop :GuitarArp1 do
  sample GuitArp# , rate: 0.5
  sleep 32
  sample GuitArp
  sleep 32
  
end


