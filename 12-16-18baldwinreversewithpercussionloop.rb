# Loading previous buffer contents. Please wait...Baldwin = "/Users/omnisonic/Documents/Google Drive GuitarByJohn/Music Projects/Sonic Pi/Baldwin_midside_flac/"
Baldwin = "/Users/omnisonic/Documents/code/sonic_pi/Baldwin/"

use_bpm 60
with_fx :reverb do
  
  live_loop :sussbal do
    
    sample Baldwin, "45", pan: -1, rate: -1
    sample Baldwin, "26", pan: 1
    sleep 4
  end
end


live_loop :ble do
  sample Baldwin, "50", attack: 1
  sleep 8
  
end


live_loop :hh do
  2.times do
    sample :drum_cymbal_closed
    sleep 0.5
  end
  1.times do
    sample :drum_cymbal_closed, beat_stretch: 2
    sample :drum_cymbal_closed
    sleep 0.5
    sample :drum_cymbal_closed
    sleep 0.5
    
  end
  4.times do
    sample :drum_cymbal_closed
    sleep 0.25
  end
  4.times do
    sample :drum_cymbal_closed
    sleep 0.25
  end
  
  live_loop :bassd do
    sample :drum_bass_soft
    sleep 1
  end
  
  

  
  
end


#synth :sine, note: :bb4
#synth :saw, note: [:f, :a, :c], release: 4

