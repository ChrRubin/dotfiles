function fftrans
  argparse lw lh pw ph width= height= -- $argv
  set -f w -1
  set -f h -1
  if set -q _flag_lw
    set -f w 1920
  else if set -q _flag_lh
    set -f h 1080
  else if set -q _flag_pw
    set -f w 1080
  else if set -q _flag_ph
    set -f h 1920
  end
  if set -q _flag_width
    set -f w $_flag_width
  end
  if set -q _flag_height
    set -f h $_flag_height
  end
  set -f scale $w:$h
  for i in $argv
    set -f ori $i
    set -f old {$ori}.old
    mv $i $old
    ffmpeg -i $old -vf scale=$scale -c:a copy -y $ori
    if test $status != 0
      mv $old $ori
    end
  end
end
