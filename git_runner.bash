source config.env
sudo docker stop   gitea_runner 
sudo docker rm     gitea_runner 
sudo docker run --name gitea_runner -d   --restart unless-stopped  --net host  -e GITEA_RUNNER_LABELS="run_monier" -v ./data_runner:/data -e GITEA_RUNNER_LABELS="run_monier" -e GITEA_RUNNER_NAME="moniner"  -e GITEA_INSTANCE_URL=$gitea_url  -v ./config.yaml:/config.yaml -e CONFIG_FILE=/config.yaml  -e GITEA_RUNNER_REGISTRATION_TOKEN=$token_gitea_runner    -v /var/run/docker.sock:/var/run/docker.sock  gitea/act_runner:latest
