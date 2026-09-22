#!/bin/bash

# IP pública (cachea por 5 min para no hacer requests constantes)
get_public_ip() {
  cache_file="/tmp/tmux_public_ip"
  if [ -f "$cache_file" ] && [ $(($(date +%s) - $(stat -f%m "$cache_file"))) -lt 300 ]; then
    cat "$cache_file"
  else
    ip=$(curl -s --max-time 2 https://icanhazip.com 2>/dev/null || echo "—")
    echo "$ip" > "$cache_file"
    echo "$ip"
  fi
}

# RAM disponible (macOS)
get_ram() {
  vm_stat | grep "Pages free" | awk '{printf "%.1fG", $3 / 262144}'
}

# CPU usage (macOS)
get_cpu() {
  top -l 1 -n 0 | grep "CPU usage" | awk '{print $3}' | sed 's/%//'
}


case "$1" in
  "public_ip") get_public_ip ;;
  "ram") get_ram ;;
  "cpu") get_cpu ;;
  *) echo "Usage: $0 {public_ip|ram|cpu}" ;;
esac
