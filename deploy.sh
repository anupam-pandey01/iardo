#!/bin/bash

echo "=== Starting iardo deployment ==="

# Step 1: Pull latest code from GitHub
echo "Pulling latest code..."
cd /opt/iardo
git pull

# Step 2: Build WAR
echo "Building WAR..."
mvn clean package

# Check if build succeeded
if [ $? -ne 0 ]; then
    echo "BUILD FAILED — deployment aborted. No changes made to live site."
    exit 1
fi

echo "Build successful."

# Step 3: Stop Tomcat
echo "Stopping Tomcat..."
sudo systemctl stop tomcat9

# Step 4: Backup current deployment
echo "Backing up current deployment..."
mkdir -p /root/iardo-backups
tar -czf /root/iardo-backups/ROOT-backup-$(date +%Y%m%d-%H%M%S).tar.gz \
    /var/lib/tomcat9/webapps_iardo/ROOT 2>/dev/null
echo "Backup saved."

# Step 5: Remove old deployment
echo "Removing old deployment..."
rm -rf /var/lib/tomcat9/webapps_iardo/ROOT
rm -f /var/lib/tomcat9/webapps_iardo/ROOT.war

# Step 6: Copy new WAR
echo "Copying new WAR..."
cp /opt/iardo/target/ROOT.war /var/lib/tomcat9/webapps_iardo/ROOT.war

# Step 7: Extract WAR manually
echo "Extracting WAR..."
mkdir -p /var/lib/tomcat9/webapps_iardo/ROOT
cd /var/lib/tomcat9/webapps_iardo/ROOT
jar -xf ../ROOT.war
chown -R tomcat:tomcat /var/lib/tomcat9/webapps_iardo/ROOT
chown tomcat:tomcat /var/lib/tomcat9/webapps_iardo/ROOT.war

# Step 8: Start Tomcat
echo "Starting Tomcat..."
sudo systemctl start tomcat9

echo ""
echo "=== Deployment complete! ==="
echo "Check https://iardo.in to verify."