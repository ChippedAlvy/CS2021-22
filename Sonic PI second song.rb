# Welcome to Sonic Pi

use_synth :piano
use_bpm 96
fadein = 0.001
#simplified
Sparkle=  "C:/Users/alvin_liu/Desktop/Sparkle.wav"

define :applyeffect do |a|
  play a, amp: fadein
  sleep 0.25
end

notes = [:b4, :cs5, :fs5]
nindex = 0

live_loop :background do
  55.times do
    1.times do
      3.times do
        1.times do
          applyeffect (notes[nindex])
          nindex = nindex + 1
        end
      end
      if nindex = 3
        nindex = 0
      end
    end
    if fadein > 5
      
    else
      fadein = fadein + 0.01
    end
  end
  stop
end
wait 6.5
#sample Sparkle

wait 4.5
define :threefs4s do
  
  play :fs4, sustain: 1, sustain_level: 0.8, release: 1.5
  sleep 1.5
  play :fs4, sustain: 1, sustain_level: 0.8, release: 1.5
  sleep 1.5
  play :fs4, sustain: 1, sustain_level: 0.8, release: 1.5
  sleep 1.5
end
play :ds3, sustain: 1, sustain_level: 0.8, release: 1.5
sleep 1.5
play :ds4, sustain: 1, sustain_level: 0.8, release: 1.5
sleep 1.5
play :e3, sustain: 1, sustain_level: 0.8, release: 1.5
sleep 1.5
play :e4, sustain: 1, sustain_level: 0.8, release: 1.5
sleep 1.5
play :fs3, sustain: 1, sustain_level: 0.8, release: 1.5
sleep 1.5
#simplify this later
threefs4s
play :ds3, sustain: 1, sustain_level: 0.8, release: 1.5
sleep 1.5
play :ds4, sustain: 1, sustain_level: 0.8, release: 1.5
sleep 1.5
play :e3, sustain: 1, sustain_level: 0.8, release: 1.5
sleep 1.5
play :e4, sustain: 1, sustain_level: 0.8, release: 1.5
sleep 1.5
play :fs3, sustain: 1, sustain_level: 0.8, release: 1.5
sleep 1.5
threefs4s
play :fs3, sustain: 1, sustain_level: 0.8, release: 1.5
play :fs2, sustain: 1, sustain_level: 0.8, release: 1.5
sleep 1.5
play :ds4, sustain: 1, sustain_level: 0.8, release: 1.5
sleep 1.5
play :e2, sustain: 1, sustain_level: 0.8, release: 1.5
play :e3, sustain: 1, sustain_level: 0.8, release: 1.5
sleep 1.5
play :e4, sustain: 1, sustain_level: 0.8, release: 1.5
sleep 1.5
play :fs3, sustain: 1, sustain_level: 0.8, release: 1.5
play :fs2, sustain: 1, sustain_level: 0.8, release: 1.5
threefs4s




