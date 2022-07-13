#!/usr/bin/env bash

docker compose up -d
docker exec -ti ubuntu bash -c "apt-get update && apt-get install -y python3"
ansible-playbook -i inventory/prod.yml site.yml --vault-password-file ./p.txt
docker compose down