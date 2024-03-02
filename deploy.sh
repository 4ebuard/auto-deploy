echo "Deploying changes..."
# Open folder\
cd /mnt/nas/auto-deploy
# Pull changes from the live branch
git pull

# Build the image with the new changes
docker build . -t auto-deploy

# Shut down the existing containers
docker-compose down

# Start the new containers
docker-compose up -d
echo "Deployed!"
