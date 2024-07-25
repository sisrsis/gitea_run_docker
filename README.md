## install docker 
```
sudo apt-get install docker.io
```
## install mysql-clinet
```
sudo apt install mysql-client 
```
# add password mariadb to file config.env
```
MYSQL_root_password=<enter password>
```
## run gitea 
```
bash gitea_run.bash
```





# gitea_runner 

#### token gitea for add to config.env

```
token_gitea_runner=
```


#### write gitea label name gitea_runner to config.env

```
GITEA_RUNNER_LABELS=
GITEA_RUNNER_NAME=
```

### run gitea_runner 
```
bash gitea_runner
```


### Check the yaml file for more gitea runner configuration
