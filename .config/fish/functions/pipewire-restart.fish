function pipewire-restart
    systemctl --user restart pipewire.service pipewire-pulse.socket
end

