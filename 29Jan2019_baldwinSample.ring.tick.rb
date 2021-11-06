use_bpm 60

bald = "Users/omnisonic/Music/Samples/Baldwin/"

with_fx :reverb,mix: 1 do
  live_loop :piano do
    samplename = ["C4", "C5", "C3","C6","C7","G7","E6"].choose
    time = [0.125, 0.125, 0.25, 0.5, 0.75, 1, 1.5].choose
    sample bald, samplename, amp: 1, rate: 0.5, pan: rrand(-0.8, 0.8), attack: 0.5, attack_level: 1, decay: 1, decay_level: 1, sustain: 0.5, release: 0.5
    
    sleep time
  end
  
  
  live_loop :piano3 do
    
    samplename2 = ["C5", "E5", "G5", "C6", "E6","C6", "G5", "e5"].ring.tick
    sample bald, samplename2
    sleep 2 
  end
  
  
  
end

live_loop :piano2 do
  samplename = ["C4", "C5", "C3","C6","C7","G7","E6"].choose
  time = [0.125, 0.125, 0.25, 0.5, 0.75, 1, 1.5].choose
  sample bald, samplename, amp: 1, rate: 0.5, pan: rrand(-0.8, 0.8), attack: 0.05, attack_level: 1, decay: 1, decay_level: 1, sustain: 1, release: 1
  
  sleep time
  
  
end


