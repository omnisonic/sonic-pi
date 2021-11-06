Baldwin = "/Users/omnisonic/Documents/code/sonic_pi/Baldwin/
#use_bpm 100
#with_fx :reverb do

rhy_vol = 0.1
#live_loop :baldwin1 do

live_loop :rhy do
  sample :loop_amen, beat_stretch: 8, hpf: 100, pan: 0.75
  sleep 4
end


live_loop :piano1 do
  
  # "39" is middle c in my baldwin samples folder (12-6-18)
  play 24, amp: 2, sustain: 1
  sample Baldwin, "39", finish: 0.125, rate: -1, attack: 1
  sleep 1
  sample Baldwin, "44", finish: 0.125
  sleep 1
  play 43, amp:2, sustain: 1
  sample Baldwin, "48", finish: 0.125
  sleep 1
  sample Baldwin, choose(["42","44", "46", "48"]), finish: 0.125
  sleep 1
  
end

live_loop :piano2 do
  sample Baldwin, choose(["48", "49"]), pan: 1, finish: 0.125, hpf: 50
  sleep 0.5
  sample Baldwin, "56", pan: -1, finish: 0.125, rate: -1, hpf: 100
  sleep 0.5
  sample Baldwin, choose(["60", "63"]), pan: -0.5, finish: 1, rate: 1
  sleep 0.25
  play 48
  
end



live_loop :fast do
  play 84, finish: 0.5, attack: 0.3
  sleep 8
end


live_loop :three do
  sample :drum_heavy_kick
  sleep 0.5
  sample :drum_heavy_kick
  sleep 0.5
  sample :drum_roll, finish: 0.0525, pan: -0.5
  
  sleep 0.5
  sample :drum_snare_soft, pan: 0.5
  sleep 0.5
end



# HISS
live_loop :hiss_loop do
  sample :vinyl_hiss, amp: 3
  
  sleep sample_duration :vinyl_hiss
end











