# simp-games

My Games List - Like MyAnimeList but with my personal collection of games

## Setup

- Starting the CMS

```bash
cd cms
cp app/.env.example app/.env
docker-compose up
```

You can now access it on http://localhost:1337

- Building the front

```bash
cd front
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
python -m sssimp
```

- The front is now built in `front/output/`

Dockerfile, docker-compose.yml and scripts are made for and tested with podman
only. I do not guarantee compatibility with Docker or other container solutions.

## Deployment

To serve the CMS using Caddy at subpath of a domain, you can use the following
configuration:

`cms/app/.env`

```
URL=https://mydomain.com/path/to/go
```

`Caddyfile`

```
mydomain.com {
    handle_path /path/to/go/* {
        reverse_proxy localhost:1337
    }
}
```
