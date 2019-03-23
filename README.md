Remote debugging of Python applications with ptvsd
--------------------------------------------------
*proof of concept based on VS Code IDE*

Build docker image:

```
docker build -t test:latest .
```

Run container, mount volumes and bind ports:

```
docker run --rm --name ttt -v /absolute/path/to/repo/src:/opt/sources -p 3050:3050 test:latest
```

Look up IP address of container, and update `.vscode/launch.json` if needed:

```
docker inspect ttt | grep IPAddress
```

Run VS Code, create project from repo root (`.vscode` dir should reside in the root). Add breakpoints to `main.py`
and observe magic when run debugger!!!

![Expected magic](https://raw.githubusercontent.com/vindex10/ptvsd-spawner/master/doc/proof.png)
