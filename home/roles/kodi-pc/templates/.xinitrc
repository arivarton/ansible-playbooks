# Set video output
xrandr --output {{ video_output_disabled }} --off
xrandr --output {{ video_output_activated }} --primary --auto

# Set sound output
# pactl set-card-profile 0 output:hdmi-stereo
pactl set-default-sink {{ pulseaudio_default_sink }}

# Turn off power saving
xset -dpms
xset s off

exec kodi --standalone
