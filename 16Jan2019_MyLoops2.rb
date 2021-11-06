cajA = "/Users/omnisonic/Music/MyLoops/cajon_riff_146bmp_8bar_14Jan2018.wav"
cajB = "/Users/omnisonic/Music/MyLoops/cajon_riff_146bmp_4bar_14Jan2019.wav"
CajKick = "/Users/omnisonic/Music/MyLoops/cajon_kick_146bmp_8bar_14Jan2018.wav"
BrushA = "/Users/omnisonic/Music/MyLoops/brush_loop_146bmp_16bar_14Jan2019.wav"
Baldwin = "/Users/omnisonic/Documents/Cloud Drive/Music Projects/Sonic Pi/Baldwin_midside_flac/"
Tabla = "/Users/omnisonic/Music/MyLoops/Tabla_146bmp_16bar_14Jan2018.wav"

GuitArp = "/Users/omnisonic/Music/MyLoops/Arpeggio_Em-Fmaj_146bmp_4bar_14Jan2018.wav"


use_bpm 146

live_loop :cajA1 do
  #stop #stops the loop!
  
  sample  cajA, start: 0.25, finish: 1
  sleep 32
end

live_loop :cajB1 do
  stop #stops the loop!
  sample CajKick, rate: 1
  sleep 32
  
end

live_loop :Brushes do
  stop #stops the loop!
  
  sleep 0.5
  sample BrushA, pan: 1
  sleep 56
  
end

live_loop :Brushes2 do
  stop #stops the loop!
  
  sample BrushA, pan: -1, rate: -2
  sleep 64
  
end

live_loop :baldwinNote do
  stop #stops the loop!
  
  sample Baldwin, 19, rate: -0.75, amp: 0
  sleep 32
  
end

live_loop :baldwinNote2 do
  stop
  sample Baldwin, rand_i(100), rate: choose([-1,-0.5,1]), amp: 1, attack: rand, release: rand, pan: choose([-1,0,1,0]) #rand_i() plays a number in sample folder below 100, sutain is in seconds
  sleep choose([4,8,1,2,16])
  
end


live_loop :Tabla1 do
  # stop
  sample Tabla, pan: 0, amp: 5
  sleep 64
end


live_loop :TablaSlice do
  
  slice_idx = rand_i(8)
  slice_size = 0.125
  s = slice_idx * slice_size
  f = s + slice_size
  sample Tabla, start: s, finish: f, rate: choose([1,1.5,2,-1]), amp: 5, pan: 0.75
  sleep sample_duration Tabla, start: s, finish: f
  
end

live_loop :GuitarArp1 do
  stop
  sample GuitArp, rate: 1, finish: 0.875, amp: 0
  sleep 32
  
  
  
end

live_loop :beat_slicer do
  stop
  slice_idx = rand_i(8)
  slice_size = 0.125
  s = slice_idx * slice_size
  f = s + slice_size
  sample cajA, start: s, finish: f, rate: 0.5
  sleep sample_duration cajA, start: s, finish: f
end


