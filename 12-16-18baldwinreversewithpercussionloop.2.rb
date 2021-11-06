# Loading previous buffer contents. Please wait...Baldwin = "/Users/omnisonic/Documents/Google Drive GuitarByJohn/Music Projects/Sonic Pi/Baldwin_midside_flac/"
Baldwin = "/Users/omnisonic/Documents/pdrive/Music Projects/Sonic Pi/Baldwin_midside_flac/"

use_bpm 120
with_fx :reverb do
  
  live_loop :sussbal do
    
    sample Baldwin, 38, pan: -1, rate: -1
    sleep 4
    2.times do
      
      sample Baldwin, choose([25,38,42,69]), pan: 1
      sleep 0.5
    end
    
  end
end


live_loop :ble do
  sample Baldwin, 50, attack: (rrand 0.5, 1), hpf: 100
  sleep rrand(0.5, 8)
  
end

with_fx :reverb do
  
  live_loop :hh do
    2.times do
      sample :drum_cymbal_closed
      sleep 0.5
    end
    with_fx :distortion do
      1.times do
        sample :drum_cymbal_closed, beat_stretch: 2, amp: 0.5
        sample :drum_cymbal_closed
        sleep 0.5
        sample :drum_cymbal_closed,rate: -1
        sleep 0.5
      end
      
    end
    4.times do
      sample :drum_cymbal_closed, attack: 0.055
      sleep 0.125
    end
    6.times do
      sample :drum_cymbal_closed, attack: 0.25
      sleep 0.25
    end
    
    live_loop :bassd do
      sample :drum_bass_soft
      sleep 1
    end
    
    
    
    
  end
  
  
end

#synth :sine, note: :bb4
#synth :saw, note: [:f, :a, :c], release: 4

