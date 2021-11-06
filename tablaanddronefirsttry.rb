# use_bpm 130

live_loop :foo do
  sample :tabla_tas3
  sleep 2
end

live_loop :fee do
  sample :tabla_tas1
  sleep 0.5
end

sample :ambi_drone
live_loop :hiss do
  
  sample :vinyl_hiss
  sleep 8
end

