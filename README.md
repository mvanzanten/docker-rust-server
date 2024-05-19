# Simple Rust Server (Docker)
This is a very simple installation of rust server and oxide. No Rcon. Docker image can be found here [uacmarine556/rust](https://hub.docker.com/r/uacmarine556/rust).
## Environment variables
Set the following setting for your server (defaults set in docker compose).

| Variable                 | Description                                   |
| ------------------------ | --------------------------------------------- |
| **SERVER_PORT**          | The port to host the server (28015)           |
| **SERVER_HOSTNAME**      | The name to set for the server (LemonAid)     |
| **SERVER_SEED**          | The seed to set the map design (32345)        |
| **SERVER_SAVE_INTERVAL** | Frequency in seconds to save game (300)       |
| **SERVER_MAX_PLAYERS**   | Max player count (75)                         |
| **SERVER_WORLD_SIZE**    | The world size (4092)                         |
| **DECAY_SCALE**          | The decay scale for buildings (0)             |
| **ENABLE_OXIDE**         | Whether or not to install oxide (true, false) |

## Build
First thing is to build the container, I am tagging it with the name rust.
```docker build . -t rust```

## Start
Make sure you have a directory called `data` where you launch the following command.

Run the command `docker-compose up -d`

## Oxide
The `/data/oxide` directory contains some default oxide settings such as better loot.
