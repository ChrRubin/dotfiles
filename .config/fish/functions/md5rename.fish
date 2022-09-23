function md5rename
  for i in $argv
    set -f ext (echo $i | sed 's/.*\.//')
    set -f md5 (md5sum $i | sed 's/  .*//')
    # echo {$md5}.{$ext}
    mv $i {$md5}.{$ext}
  end
end
