#!/bin/bash

# Activer le pare-feu
sudo pfctl -e

# Autoriser les connexions entrantes sur le port 80 (HTTP)
echo "pass in proto tcp from any to any port 80" | sudo pfctl -f -

# Autoriser les connexions entrantes sur le port 443 (HTTPS)
echo "pass in proto tcp from any to any port 443" | sudo pfctl -f -

# Autoriser les connexions entrantes sur le port 53 (DNS)
echo "pass in proto tcp from any to any port 53" | sudo pfctl -f -
echo "pass in proto udp from any to any port 53" | sudo pfctl -f -

# Autoriser les connexions entrantes sur le port 22 (SSH)
echo "pass in proto tcp from any to any port 22" | sudo pfctl -f -

# Autoriser les connexions entrantes sur le port 3000
echo "pass in proto tcp from any to any port 3000" | sudo pfctl -f -

# Autoriser les connexions entrantes sur le port 3002
echo "pass in proto tcp from any to any port 3002" | sudo pfctl -f -

# Bloquer tout le reste
echo "block all" | sudo pfctl -f -

# sudo pfctl -d // disable firewall
# sudo pfctl -s info
