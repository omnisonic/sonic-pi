Baldwin = "/Users/omnisonic/Documents/code/sonic_pi/Baldwin/
#use_bpm 100
#with_fx :reverb do

rhy_vol = 0.1
#live_loop :baldwin1 do

live_loop :rhy do
  sample :loop_amen, beat_stretch: 8, hpf: 100
  sleep 4
end


live_loop :piano1 do
  
  # "39" is middle c in my baldwin samples folder (12-6-18)
  sample Baldwin, "39", finish: 0.125, rate: -1, attack: 1
  sleep 1
  sample Baldwin, "44", finish: 0.125
  sleep 1
  sample Baldwin, "48", finish: 0.125
  sleep 1
  sample Baldwin, choose(["42","44", "46"]), finish: 0.125
  sleep 1
  
end

live_loop :piano2 do
  sample Baldwin, choose(["48", "49"]), pan: 1, finish: 0.125
  sleep 0.5
  sample Baldwin, "56", pan: -1, finish: 0.125, rate: -1
  sleep 0.5
  sample Baldwin, choose(["60", "63"]), pan: -1, finish: 0.125, rate: -1
  sleep 0.25
  
end


# HISS
live_loop :hiss_loop do
  sample :vinyl_hiss, amp: 3
  
  sleep sample_duration :vinyl_hiss
end











