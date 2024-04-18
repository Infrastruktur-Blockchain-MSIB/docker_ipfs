#Step 1: Update docker-compose.yml
sed -i 's/$PT/UNISA/g' docker-compose.yml

#Step 2: Docker compose up
docker compose up -d

#Step 3: Docker compose stop
docker compose stop

#Step 4: Display PeerID from ipfs/config
cat ipfs/config | grep "PeerID"

#Step 5: Display identity.json from cluster
cat cluster/identity.json | grep "id"

#Step 6: Unzip swarm.zip to ipfs/ with password "msib2024"
unzip -P msib2024 swarm.zip -d ipfs/
