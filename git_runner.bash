source config.env
mkdir data_runner
sudo docker stop   gitea_runner 
sudo docker rm     gitea_runner 
sudo docker run --name gitea_runner -d   --restart unless-stopped   --net host -e GITEA_INSTANCE_URL=$gitea_url  -e GITEA_RUNNER_REGISTRATION_TOKEN=$token_gitea_runner   -v ./data_runner:/data -v /var/run/docker.sock:/var/run/docker.sock  gitea/act_runner:latest 
