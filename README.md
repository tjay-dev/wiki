# MkDocs as wiki


### Development

#### Updating packages in `requirements.txt`

Check available version by running:
```shell
make package=mkdocs check-version
```

#### Building and running docker container
```shell
make run
```

In the browser go to `localhost:8000`

To clean up containers:
```shell
make down
```
