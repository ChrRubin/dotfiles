function fftrans
  for i in $argv
    set -f ori $i
    set -f old {$ori}.old
    mv $i $old
    ffmpeg -i $old -c:a copy -y $ori
  end
end
