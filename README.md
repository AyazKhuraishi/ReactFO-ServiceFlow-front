# Front

The React app that serves as Kubeshark's front-end.

## NPM

Install the dependencies:

```shell
npm install
```

Run:

```shell
npm start
```

Visit http://localhost:3000/

## Docker Build & Run

Build:

```shell
docker build . -t kubeshark-front
```

Run:

```shell
docker run -p 3000:80 kubeshark-front
```

Visit http://localhost:3000/
