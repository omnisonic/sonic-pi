Baldwin = "/Users/omnisonic/Documents/code/sonic_pi/Baldwin"
#use_bpm 100
#with_fx :reverb do

rhy_vol = 0.1
#live_loop :baldwin1 do

live_loop :rhy do
  sample :loop_amen, beat_stretch: 8, hpf: 100, pan:  0.75
  sleep 2
  
end


live_loop :piano1 do
  
  # "39" is middle c in my baldwin samples folder (12-6-18)
  play 24, amp: 2, sustain: 1
  sample Baldwin, "37", finish: 1, rate: -1, attack: 1
  sleep choose ([1,0.5,0.25,2])
  sample Baldwin, "42", finish: 0.125
  sleep choose ([1,0.5,0.25,2])
  play 43, amp:2, sustain: 1, rate: -2
  sample Baldwin, "46", finish: 0.125
  sleep choose ([1,0.5,0.25,2])
  sample Baldwin, choose(["42","44", "46", "48"]), finish: 0.125
  sleep choose ([1,0.5,0.25,2])
  
end

live_loop :piano2 do
  sample Baldwin, choose(["48", "54"]), pan: 1, finish: 0.125, hpf: 50
  sleep choose ([1,0.5,0.25,2])
  sample Baldwin, "56", pan: -1, finish: 0.125, rate: -1, hpf: 100
  sleep choose ([1,0.5,0.25,2])
  sample Baldwin, choose(["58", "54"]), pan: -0.5, finish: 1, rate: -1
  sleep choose ([1,0.5,0.25,2])
  play 48
  sleep choose ([1,0.5,0.25,2])
  
end



live_loop :fast do
  play 70, finish: 0.5, attack: 0.3
  sleep 8
end


live_loop :three do
  sample :drum_heavy_kick, amp: 0
  sleep choose ([0.25, 0.125, 0.125, 0.125])
  sample :drum_heavy_kick
  sleep choose ([0.25, 0.125, 0.125, 0.125])
  sample :drum_roll, amp: 0 , finish: 0.0525, pan: -0.5
  
  sleep choose ([0.25, 0.125, 0.125, 0.125])
  sample :drum_snare_soft, pan: 0.5
  sleep  choose ([0.25, 0.125, 1, 0.5])
  
end




# HISS
# live_loop :hiss_loop do
##| sample :vinyl_hiss, amp: 0

##| sleep sample_duration :vinyl_hiss
##| end











