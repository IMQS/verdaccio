This is a Docker build of the IMQS Verdaccio package hosting system, for privately hosted NPM packages.

The stock build, as of 2019-10-28, had some issues that I didn't feel like figuring out.

Adding of new users is disabled in the docker container. In order to add new users,
you must SSH into the host machine, and use htpasswd to add a new user.

### Adding a new user
```shell
ssh developer1@cimaster01
sudo htpasswd /home/developer1/verdaccio/auth/htpasswd ben
```

### Updating the docker image
`docker build -t imqs/verdaccio && docker push imqs/verdaccio`
