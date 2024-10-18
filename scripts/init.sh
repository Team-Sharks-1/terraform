#!/bin/bash
apt-get update
apt-get install -y nodejs npm apache2

# Start and enable Apache2 service
systemctl start apache2
systemctl enable apache2

echo "Apache2 service started and enabled"
